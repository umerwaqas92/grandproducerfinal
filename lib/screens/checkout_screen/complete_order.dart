import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class Completeorder extends StatefulWidget {
  @override
  _CompleteorderState createState() => _CompleteorderState();
}

class _CompleteorderState extends State<Completeorder> {
  bool check=false;
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
      width: width,
      height: vert_block*40,
      padding: EdgeInsets.symmetric(vertical: horz_block*3,horizontal: horz_block*3),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: ()=>Navigator.pop(context),
                  
                  child: Icon(Icons.close,color: Mycolors.border,))
              ],
            ),
            Text('Order Success',style: TextStyle(
             // fontWeight: FontWeight.bold,
              fontFamily: 'SF bold',
              fontSize: vert_block*2,
              color: Colors.black
            ),),
            SizedBox(height: vert_block*2,),
             Text('Thank You! Your order is being \nprocessed by the system.',textAlign: TextAlign.center,style: TextStyle(
             // fontWeight: FontWeight.bold,
             // fontFamily: 'SF bold',
              fontSize: vert_block*1.4,
              color: Mycolors.graytext
            ),),

            SizedBox(height: vert_block*2,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('My Order',textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
             // fontWeight: FontWeight.bold,
             // fontFamily: 'SF bold',
              fontSize: vert_block*1.4,
              color: Mycolors.green
            ),),
            SizedBox(width: horz_block*6,),
            Text('Invoice',textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
             // fontWeight: FontWeight.bold,
             // fontFamily: 'SF bold',
              fontSize: vert_block*1.4,
              color: Mycolors.green
            ),),
              ],
            ),

            SizedBox(height: vert_block*2,),

            Image.asset('assets/order.png',width: horz_block*40,)
           
          ],
        ),
      ),
      
    );
  }
}