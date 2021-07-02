import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class Cartitems1 extends StatefulWidget {
  @override
  _Cartitems1State createState() => _Cartitems1State();
}

class _Cartitems1State extends State<Cartitems1> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
                  width: width,
                  height: vert_block*10,
                  //color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        width: horz_block*20,
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
                          Text('  Fresh Asparagus',textAlign:TextAlign.center,style: TextStyle(
                  fontFamily: 'SF semibold',
                  fontSize: vert_block*1.6,
                  color: Mycolors.fruitnamecolor
                ),),
                Expanded(child: SizedBox()),
                 Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('  \$6.80',textAlign:TextAlign.center,style: TextStyle(
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