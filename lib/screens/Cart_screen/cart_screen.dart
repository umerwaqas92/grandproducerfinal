import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Cart_screen/Cart_items/cart_item2.dart';
import 'package:grocery/screens/Cart_screen/Cart_items/cart_items.dart';
import 'package:grocery/screens/checkout_screen/checkout.dart';

class Cartscreen extends StatefulWidget {
  @override
  _CartscreenState createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Stack(
          children: [

            Container(
              width: width,
              height: height,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: horz_block*4),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                SizedBox(height: vert_block*2,),
                    Text('Single Items',textAlign:TextAlign.center,style: TextStyle(
                  //fontFamily: 'SF semibold',
                  fontSize: vert_block*1.5,
                  color: Mycolors.fruitnamecolor
                ),),

                SizedBox(height: vert_block*2,),

                Cartitems(),
                SizedBox(height: vert_block,),

                Cartitems(),
                SizedBox(height: vert_block,),
                SizedBox(height: vert_block*2,),
                Container(
                  width: width,
                  height: 2,
                  color: Mycolors.border,
                ),
                SizedBox(height: vert_block*2,),

                Row(
                  children: [
                    Text('Fresh Salad Pasta',textAlign:TextAlign.center,style: TextStyle(
                      //fontFamily: 'SF semibold',
                      fontSize: vert_block*1.5,
                      color: Mycolors.fruitnamecolor
                    ),),
                    Expanded(child: SizedBox()),
                     Container(
                  width: horz_block*7,
                  height: horz_block*7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Mycolors.border
                    )
                  ),
                  child: Center(
                    child: Icon(Icons.remove,color: Colors.black.withOpacity(0.6),size: 16,),
                  ),
                ),
                SizedBox(width: horz_block*5,),

                 Text('1',textAlign:TextAlign.center,style: TextStyle(
                      //fontFamily: 'SF semibold',
                      fontSize: vert_block*1.4,
                      color: Mycolors.fruitnamecolor
                ),),
                SizedBox(width: horz_block*5,),

                Container(
                  width: horz_block*7,
                  height: horz_block*7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Mycolors.green.withOpacity(0.5)
                    )
                  ),
                  child: Center(
                    child: Icon(Icons.add,color: Mycolors.green,size: 16,),
                  ),
                ),
                SizedBox(width: horz_block*6,),
                  ],
                ),
                SizedBox(height: vert_block*2,),
                Cartitems1(),
                SizedBox(height: vert_block*1,),
                Cartitems1(),
                SizedBox(height: vert_block*1,),
                Cartitems1(),
                SizedBox(height: vert_block*1,),
                Cartitems1(),
                SizedBox(height: vert_block*1,),
                Cartitems1(),
                SizedBox(height: vert_block*10,),

                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: vert_block*9,
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Checkoutscreen()));
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
                    child: Row(
                      children: [
                        Text('\$56.68',textAlign:TextAlign.center,style: TextStyle(
                  fontFamily: 'SF semibold',
                 
                  fontSize: vert_block*1.6,
                  color: Colors.white
              ),),
              Expanded(child: SizedBox()),

              Text('Check Out',textAlign:TextAlign.center,style: TextStyle(
                  fontFamily: 'SF semibold',
                 
                  fontSize: vert_block*1.6,
                  color: Colors.white
              ),),
              SizedBox(
                width: horz_block*3,
              ),

              Icon(Icons.arrow_forward,color: Colors.white,),
              
                      ],
                    ),
                  ),
              ),
            ),
                ),
              ),
            )
          
        ],),
      ),
      
    );
  }
}