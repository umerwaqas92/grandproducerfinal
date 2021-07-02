import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/Locale/locales.dart';
import 'package:grocery/Routes/routes.dart';
import 'package:grocery/Theme/colors.dart';
import 'package:grocery/baseurl/baseurlg.dart';
import 'package:grocery/beanmodel/cart/addtocartbean.dart';
import 'package:grocery/beanmodel/cart/cartitembean.dart';
import 'package:grocery/providergrocery/cartcountprovider.dart';
import 'package:grocery/providergrocery/cartlistprovider.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class CartPage extends StatefulWidget {
  // final VoidCallback onBackButtonPressed;
  //
  // CartPage(this.onBackButtonPressed);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItemData> cartItemd = [];
  CartStoreDetails storeDetails;
  List<int> count = [1, 1, 1];
  bool progressadd = false;
  dynamic totalPrice = 0.0;
  dynamic promocodeprice = 0.0;
  dynamic deliveryFee = 0.0;
  // dynamic cart_id;
  dynamic apcurrency;

  CartCountProvider cartCounterProvider;
  CartListProvider cartListPro;

  @override
  void initState() {
    super.initState();
    cartCounterProvider = BlocProvider.of<CartCountProvider>(context);
    cartListPro = BlocProvider.of<CartListProvider>(context);
    getCartList();
  }

  void getCartList() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      apcurrency = preferences.getString('app_currency');
      progressadd = true;
    });
    var http = Client();
    http.post(showCartUri,
        body: {'user_id': '${preferences.getInt('user_id')}'}).then((value) {
      print('cart - ${value.body}');
      if (value.statusCode == 200) {
        CartItemMainBean data1 =
            CartItemMainBean.fromJson(jsonDecode(value.body));
        if (data1.status == "1" || data1.status == 1) {
          setState(() {
            totalPrice = data1.total_price;
            // cartItemd.clear();
            // cartItemd = List.from(data1.data);
            // cart_id = cartItemd[0].order_cart_id;
            cartListPro.emitCartList(data1.data);
            storeDetails = data1.store_details;
            deliveryFee = double.parse('${data1.delivery_charge}');
          });
        } else {}
      }
      setState(() {
        progressadd = false;
      });
    }).catchError((e) {
      setState(() {
        progressadd = false;
      });
      print(e);
    });
  }

  void addtocart(String storeid, String varientid, dynamic qnty, String special,
      BuildContext context) async {
    var locale = AppLocalizations.of(context);
    setState(() {
      progressadd = true;
    });
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.containsKey('islogin') && preferences.getBool('islogin')) {
      if(preferences.getString('block')=='1'){
        setState(() {
          progressadd = false;
        });
        Toast.show('You are blocked by the admin or company. you will not able to add or remove product into cart. please contact with customer care.', context,
            gravity: Toast.CENTER,
            duration: Toast.LENGTH_SHORT);
      }else{
        var http = Client();
        http.post(addToCartUri, body: {
          'user_id': '${preferences.getInt('user_id')}',
          'qty': '${qnty}',
          'store_id': '${storeid}',
          'varient_id': '${varientid}',
          'special': '${special}',
        }).then((value) {
          print('cart add${value.body}');
          if (value.statusCode == 200) {
            AddToCartMainModel data1 =
            AddToCartMainModel.fromJson(jsonDecode(value.body));
            if ('${data1.status}' == '1') {
              cartListPro.emitCartList(data1.cart_items);
              setState(() {
                totalPrice =
                (data1.total_price != null || '${data1.total_price}' != 'null')
                    ? double.parse('${data1.total_price}')
                    : 0.0;
                deliveryFee =(data1.delivery_charge != null || '${data1.delivery_charge}' != 'null')
                    ? double.parse('${data1.delivery_charge}')
                    : 0.0;
                // if (data1.cart_items == null || data1.cart_items.length <= 0) {
                //   cartItemd.clear();
                // }
              });
              if (data1.cart_items!= null || data1.cart_items.length >= 0) {
                cartListPro.emitCartList(data1.cart_items);
                cartCounterProvider.emit(data1.cart_items.length);
              } else {
                cartListPro.emitCartList([]);
                cartCounterProvider.emit(0);
              }
            }else{
              cartListPro.emitCartList([]);
              cartCounterProvider.emit(0);
            }
            Toast.show(data1.message, context,
                gravity: Toast.CENTER, duration: Toast.LENGTH_SHORT);
          }
          setState(() {
            progressadd = false;
          });
        }).catchError((e) {
          setState(() {
            progressadd = false;
          });
          print(e);
        });
      }
    } else {
      setState(() {
        progressadd = false;
      });
      Toast.show(locale.loginfirst, context,
          gravity: Toast.CENTER, duration: Toast.LENGTH_SHORT);
    }

  }

  void clearCartList() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      apcurrency = preferences.getString('app_currency');
      progressadd = true;
    });
    var http = Client();
    http.post(clearCartUri,
        body: {'user_id': '${preferences.getInt('user_id')}'}).then((value) {
      print('cart - ${value.body}');
      if (value.statusCode == 200) {
        var jsData = jsonDecode(value.body);
        if ('${jsData['status']}' == '1') {
          cartItemd.clear();
          cartCounterProvider.emit(0);
          totalPrice = 0.0;
          cartListPro.emitCartList([]);
        }
      }
      setState(() {
        progressadd = false;
      });
    }).catchError((e) {
      setState(() {
        progressadd = false;
      });
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        // automaticallyImplyLeading: true,
        elevation: 0,
        title: Text(
          locale.yourCart,
          style: TextStyle(color: kMainTextColor),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: (cartItemd != null && cartItemd.length > 0) ? false : true,
        actions: [
          Visibility(
            visible: (cartItemd != null && cartItemd.length > 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: RaisedButton(
                child: Text(
                  locale.clearcartto,
                  style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                color: kMainColor,
                highlightColor: kMainColor,
                focusColor: kMainColor,
                splashColor: kMainColor,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                onPressed: () {
                  clearCartList();
                },
              ),
            ),
          )
        ],
      ),
      body: BlocBuilder<CartListProvider,List<CartItemData>>(
        builder: (context,cartList){
          cartItemd = List.from(cartList);
          return Column(
            children: [
              Expanded(
                  child: (cartItemd != null && cartItemd.length > 0)
                      ? Container(
                    child: SingleChildScrollView(
                      primary: true,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: cartItemd.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 12),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        cartItemd[index].varient_image,
                                        width: 90,
                                        height: 95,
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          cartItemd[index].product_name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '${cartItemd[index].quantity} ${cartItemd[index].unit}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            buildIconButton(Icons.remove,
                                                index, cartItemd, context),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text('${cartItemd[index].qty}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            buildIconButton(Icons.add, index,
                                                cartItemd, context),
                                            SizedBox(
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                      '$apcurrency ${cartItemd[index].price}',
                                      textAlign: TextAlign.right,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1),
                                ],
                              ),
                            );
                          }),
                    ),
                  )
                      : Container(
                    alignment: Alignment.center,
                    child: Text(
                      !progressadd ? locale.cart1 : '',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Visibility(
                        visible:
                        (totalPrice != null && double.parse('$totalPrice') > 0),
                        child: buildAmountRow(
                            locale.cartTotal, '$apcurrency $totalPrice')),
                    Visibility(
                        visible: ((cartItemd != null && cartItemd.length > 0) &&
                            (deliveryFee != null &&
                                double.parse('$deliveryFee') > 0)),
                        child: buildAmountRow(
                            locale.deliveryFee, '$apcurrency $deliveryFee')),
                    // buildAmountRow(locale.promoCode, '-$apcurrency $promocodeprice'),
                    SizedBox(
                      height: 5,
                    ),
                    (!progressadd)
                        ? GestureDetector(
                      onTap: () {
                        if ((cartItemd != null && cartItemd.length > 0)) {
                          Navigator.pushNamed(
                              context, PageRoutes.selectAddress,
                              arguments: {
                                'store_id': '${storeDetails.store_id}',
                                'store_d': storeDetails,
                                'cartdetails': cartItemd,
                              });
                        } else {
                          Navigator.of(context).pop();
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        color: kMainColor,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: (cartItemd != null && cartItemd.length > 0)
                              ? Row(
                            children: [
                              Text(
                                locale.checkoutNow,
                                style:
                                Theme.of(context).textTheme.button,
                              ),
                              Spacer(
                                flex: 6,
                              ),
                              Text(locale.total,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[100],
                                      fontWeight: FontWeight.w500)),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                '$apcurrency ${totalPrice+deliveryFee}',
                                style:
                                Theme.of(context).textTheme.button,
                              )
                            ],
                          )
                              : Text(
                            locale.shownow,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    )
                        : Container(
                      height: 52,
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: 30,
                          height: 30,
                          child: CircularProgressIndicator()),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Padding buildAmountRow(String text, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Spacer(),
          Text(
            price,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Container buildIconButton(IconData icon, int index, List<CartItemData> items,
      BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey[400], width: 0)),
      child: IconButton(
        onPressed: () {
          setState(() {
            if (icon == Icons.remove) {
              int ct = int.parse('${items[index].qty}');
              if (ct > 0) {
                ct--;
                items[index].qty = '$ct';
                addtocart('${items[index].store_id}',
                    '${items[index].varient_id}', ct, '0', context);
              }
            } else {
              int ct = int.parse('${items[index].qty}');
              ct++;
              items[index].qty = '$ct';
              addtocart('${items[index].store_id}',
                  '${items[index].varient_id}', ct, '0', context);
            }
          });
        },
        icon: Icon(
          icon,
          color: Colors.grey[700],
          size: 16,
        ),
      ),
    );
  }
}
