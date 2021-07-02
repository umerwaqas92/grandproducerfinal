import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class Cartitems extends StatefulWidget {
  @override
  _CartitemsState createState() => _CartitemsState();
}

class _CartitemsState extends State<Cartitems> {
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
                SizedBox(width: horz_block*30,),
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
                   ],
                 ),
                       //   SizedBox(height: vert_block,),

                        ],
                      )
                    ],
                  ),
                );
  }
}