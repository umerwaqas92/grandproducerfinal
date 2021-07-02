import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class Paymentoptions extends StatefulWidget {
  final String image;
  final String value;

  const Paymentoptions({Key key, this.image,this.value}) : super(key: key);
  @override
  _PaymentoptionsState createState() => _PaymentoptionsState();
}

class _PaymentoptionsState extends State<Paymentoptions> {
  bool check=false;
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
                    child: FittedBox(
                      child: Row(
                        children: [
                          Container(
                            width: width,
                            height: vert_block*8,
                            padding: EdgeInsets.only(left: horz_block*5,right: horz_block*15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Mycolors.border
                              )
                            ),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(widget.image,scale: 0.8,),
                                SizedBox(width: horz_block*15,),
                                 Text(widget.value,textAlign:TextAlign.center,style: TextStyle(
                              //fontFamily: 'SF semibold',
                              fontWeight: FontWeight.w500,
                              fontSize: vert_block*2.3,
                              color: Mycolors.fruitnamecolor
                            ),),
                              ],
                            ),
                          ),
                          SizedBox(width: horz_block*4,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                          check=!check;
                                                            });
                            },
                            child: Icon(check?Icons.check_circle_rounded:
                             Icons.radio_button_off_outlined,color:check?Mycolors.green: Mycolors.border,size: vert_block*4,),
                          )
                        ],
                      ),
                    ),
                  );
  }
}