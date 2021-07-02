import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/profile_screen/pages/Myorder_details.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Generateinvoice extends StatefulWidget {
  @override
  _GenerateinvoiceState createState() => _GenerateinvoiceState();
}

class _GenerateinvoiceState extends State<Generateinvoice> {
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
  title:  Text('#OD2204',textAlign:TextAlign.center,style: TextStyle(
             // fontFamily: 'SF Semibold',
              fontSize: vert_block*2,
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
        child: Column(
          children: [
           

               //SizedBox(height: vert_block,),

             Column(
               children: [
                
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
            child: Text('Order #OD2204',textAlign:TextAlign.center,style: TextStyle(
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
            child: InkWell(
              onTap: (){
                 showMaterialModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ),
                  expand: false,
  context: context,
  builder: (context) => Myorderdetails(),
);
                //Navigator.push(context, TransparentRoute(builder: (context)=>Myorderdetails()));
              },
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






               ],
             ),
            // Container(),
          ],
        ),
      ),
    );
  }
}


