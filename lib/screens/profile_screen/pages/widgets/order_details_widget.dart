import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class Orderitemdetails extends StatefulWidget {
  @override
  _OrderitemdetailsState createState() => _OrderitemdetailsState();
}

class _OrderitemdetailsState extends State<Orderitemdetails> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
                  width: width,
                  height: vert_block*8,
                  //color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        width: horz_block*17,
                        height: height,
                        decoration: BoxDecoration(
                        color: Mycolors.boxfill1,
                        borderRadius: BorderRadius.circular(8)
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: vert_block*2,),
                          Text('  Singapore noodles',textAlign:TextAlign.center,style: TextStyle(
                  fontFamily: 'SF semibold',
                  fontSize: vert_block*1.6,
                  color: Mycolors.fruitnamecolor
                ),),
                Expanded(child: SizedBox()),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('  price per item',textAlign:TextAlign.center,style: TextStyle(
                      //fontFamily: 'SF semibold',
                      fontSize: vert_block*1.4,
                      color: Mycolors.graytext
                ),),
                SizedBox(width: horz_block*40,),
                Text('\$20.78',textAlign:TextAlign.center,style: TextStyle(
                      //fontFamily: 'SF semibold',
                      fontSize: vert_block*1.4,
                      color: Mycolors.green
                ),),
                
                   ],
                 ),
                         SizedBox(height: vert_block,),

                        ],
                      )
                    ],
                  ),
                );
  }
}