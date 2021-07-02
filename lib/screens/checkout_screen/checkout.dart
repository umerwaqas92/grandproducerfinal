import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/checkout_screen/change_delievry_address.dart';
import 'package:grocery/screens/checkout_screen/confirm_order_dialogue.dart';
import 'package:grocery/screens/checkout_screen/payment_options/payment_options.dart';

class Checkoutscreen extends StatefulWidget {
  @override
  _CheckoutscreenState createState() => _CheckoutscreenState();
}

class _CheckoutscreenState extends State<Checkoutscreen> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
  title:  Text('Check Out',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'SF Semibold',
              fontSize: vert_block*2.2,
              color: Mycolors.bluetext
            ),),
  backgroundColor: Colors.white,
  elevation: 0,
  leading: Icon(Icons.arrow_back,color: Colors.black,),
      ),
      body: Container(
        width: width,
        height: height,
        color: Mycolors.lightblue,
              // padding: EdgeInsets.symmetric(horizontal: horz_block*4),

        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                  SizedBox(height: vert_block*2,),

                  Container(
            margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Number',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold',
                          fontWeight: FontWeight.w600,
                          fontSize: vert_block*1.5,
                          color: Mycolors.fruitnamecolor
                        ),),
                        Text('#OD2204',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold',
                          fontSize: vert_block*1.4,
                          color: Mycolors.green
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: vert_block*2,),

                  Container(
            margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                    child: Container(
      margin: EdgeInsets.only(top: 5),
      width: width,
      height: vert_block*20,
      padding: EdgeInsets.symmetric(horizontal: horz_block*3,vertical: vert_block*1.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
                                  BoxShadow(
                                    color: Mycolors.shadow.withOpacity(0.25),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
      ),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text('Home',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold'
                          fontWeight: FontWeight.w600,
                          fontSize: vert_block*1.5,
                          color: Mycolors.fruitnamecolor
                        ),),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Changeaddress()));
                          },
                          child: Text('change',textAlign:TextAlign.center,style: TextStyle(
                            //fontFamily: 'SF semibold',
                            fontSize: vert_block*1.4,
                            color: Mycolors.green
                          ),),
                        ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/map.png'),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: vert_block*1.7,),
                      Text('147 Kere Terrace, New York, US.',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold',
                          fontSize: vert_block*1.5,
                          color: Mycolors.fruitnamecolor
                        ),),
                      SizedBox(height: vert_block*1.7,),

                         Text('Todd Benson',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold',
                          fontSize: vert_block*1.5,
                          color: Mycolors.fruitnamecolor
                        ),),
                      SizedBox(height: vert_block*1.7,),

                         Text('+1(234)86 1122 099',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold',
                          fontSize: vert_block*1.5,
                          color: Mycolors.fruitnamecolor
                        ),),
                    ],
                )
              ],
            )
        ],
      ),
    ),
                  ),











     SizedBox(height: vert_block*2,),

                  Container(
            margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                    child: Container(
      margin: EdgeInsets.only(top: 5),
      width: width,
      height: vert_block*32,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
                                  BoxShadow(
                                    color: Mycolors.shadow.withOpacity(0.25),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Padding(
                      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*2),
              child: Text('Order Bill',textAlign:TextAlign.center,style: TextStyle(
                            //fontFamily: 'SF semibold',
                            fontWeight: FontWeight.w600,
                            fontSize: vert_block*1.5,
                            color: Mycolors.graytext
                          ),),
            ),

            Container(
              width: width,
              height: 2,
              color: Mycolors.border,
            ),

              Padding(
                      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*2),
              child: Row(
                children: [
                    Text('Order List',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.graytext
                              ),),
                              Expanded(child: SizedBox()),
                     Text('12 Items',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                               // fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Colors.black
                              ),),
                    Icon(Icons.keyboard_arrow_down_rounded,color: Mycolors.border,)
                ],
              ),
            ),

            Container(
              width: width,
              height: 2,
              color: Mycolors.border,
            ),

            Padding(
                      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*2),
              child: Row(
                children: [
                    Text('Total Price',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.graytext
                              ),),
                              Expanded(child: SizedBox()),
                     Text('\$56.68',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                               // fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Colors.black
                              ),),
                //  Icon(Icons.keyboard_arrow_down_rounded,color: Mycolors.border,)
                ],
              ),
            ),

            Container(
              width: width,
              height: 2,
              color: Mycolors.border,
            ),

            Padding(
                      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*2),
              child: Row(
                children: [
                    Text('Delievry Fee',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.graytext
                              ),),
                              Expanded(child: SizedBox()),
                     Text('\$10.68',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                               // fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Colors.black
                              ),),
                 // Icon(Icons.keyboard_arrow_down_rounded,color: Mycolors.border,)
                ],
              ),
            ),

            Container(
              width: width,
              height: 2,
              color: Mycolors.border,
            ),

             Padding(
                      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*2),
              child: Row(
                children: [
                    Text('Total Bill',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.green
                              ),),
                              Expanded(child: SizedBox()),
                     Text('\$66.68',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                               // fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.green
                              ),),
                 // Icon(Icons.keyboard_arrow_down_rounded,color: Mycolors.border,)
                ],
              ),
            ),

           
        ],
      ),
      ),
                  ),









       SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*35,
      padding: EdgeInsets.symmetric(horizontal: horz_block*3,vertical: vert_block*1.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
                                BoxShadow(
                                  color: Mycolors.shadow.withOpacity(0.25),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Payment Method',textAlign:TextAlign.center,style: TextStyle(
                        //fontFamily: 'SF semibold',
                        fontWeight: FontWeight.w600,
                        fontSize: vert_block*1.5,
                        color: Mycolors.graytext
                      ),),
                      Text('Add New Method',textAlign:TextAlign.center,style: TextStyle(
                        //fontFamily: 'SF semibold',
                        fontSize: vert_block*1.4,
                        color: Mycolors.green
                      ),),
                    ],
                  ),

                  SizedBox(height: vert_block*1.5,),

                  Paymentoptions(image: 'assets/card.png',value: '**** **** **** *368',),
                  SizedBox(height: vert_block*1,),
                  Paymentoptions(image: 'assets/net.png',value: 'Check - Net 30',),
                  SizedBox(height: vert_block*1,),
                  Paymentoptions(image: 'assets/apple.png',value: 'Apple Pay',),
                   SizedBox(height: vert_block*1,),
                  Paymentoptions(image: 'assets/gpay.png',value: 'Google Pay',),
        ],
      ),
      
      ),









       SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*14,
      padding: EdgeInsets.symmetric(horizontal: horz_block*3,vertical: vert_block*1.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
                                BoxShadow(
                                  color: Mycolors.shadow.withOpacity(0.25),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Note',textAlign:TextAlign.center,style: TextStyle(
                        //fontFamily: 'SF semibold',
                        fontWeight: FontWeight.w600,
                        fontSize: vert_block*1.5,
                        color: Mycolors.graytext
                      ),),
                      SizedBox(height: vert_block,),
          TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 4,
        style: TextStyle(
          
                  fontSize: vert_block*1.6
                ),
        decoration: InputDecoration.collapsed(
          
           hintStyle: TextStyle(
                  fontSize: vert_block*1.6,
                    color: Mycolors.graytext
                ),
          hintText: 'Write your review here …'
        ),
      ),
        ],
      ),
      
      ),




       SizedBox(height: vert_block*2,),

       Container(
                width: width,
                height: vert_block*12,
                padding: EdgeInsets.symmetric(horizontal: horz_block*6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(horz_block*7),topRight: Radius.circular(horz_block*7)),
                  color: Colors.white,
                   boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3, 2), // changes position of shadow
                                ),
                              ],
                ),
                child: Center(
                  child: InkWell(
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>Checkoutscreen()));
                showDialog(
                  context: context,
                  builder: (ctxt) => new Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Confirmorderdialogue(),)
                    );
              },
              child: Container(
                  width: width,
                  height: vert_block*6,
                  padding: EdgeInsets.symmetric(horizontal: horz_block*4),
                  decoration: BoxDecoration(
                    color: Mycolors.green,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Text('Confirm Order',textAlign:TextAlign.center,style: TextStyle(
                  fontFamily: 'SF semibold',
                 
                  fontSize: vert_block*1.6,
                  color: Colors.white
              ),),
                  ),
              ),
            ),
                ),
              ),


              ],
            ),
          ),
        ),
      ),
      
    );
  }
}