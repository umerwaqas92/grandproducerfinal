import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Signin_screen/signin.dart';

class Fruititems extends StatefulWidget {
  @override
  _FruititemsState createState() => _FruititemsState();
}

class _FruititemsState extends State<Fruititems> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
                          margin: EdgeInsets.only(right: 10,bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Mycolors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 0,
                                offset: Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: width,
                                height: vert_block*17,
                                padding: EdgeInsets.all(8),

                                decoration: BoxDecoration(
                                    // image: DecorationImage(
                                    //     image: AssetImage("assets/fruits/cherries_small.jpg"),
                                    //   fit: BoxFit.cover,
                                    // ),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                                  color: Mycolors.boxfill
                                ),
                                alignment: Alignment.topRight,
                                child: Container(
                                   width: horz_block*8,
                                  height: horz_block*8,
                                  decoration: BoxDecoration(
                                    color: Mycolors.graytext.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10),

                                    
                                  ),
                                  child: Center(
                                    child: Icon(Customicon.heart,color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: vert_block*1.8,),
                              Text('  Australian Cherry',textAlign:TextAlign.center,style: TextStyle(
                                fontFamily: 'SF semibold',
                              fontSize: vert_block*1.5,
                              color: Mycolors.fruitnamecolor
                            ),),
                             // SizedBox(height: vert_block*1,),

                            Text('  Price per kg',textAlign:TextAlign.center,style: TextStyle(
            
                            fontSize: vert_block*1.4,
                            color: Mycolors.graytext
                          ),),
                              SizedBox(height: vert_block*1,),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               InkWell(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                                 },
                                 child: Text('Need to Login',textAlign:TextAlign.center,style: TextStyle(
                                      fontFamily: 'SF semibold',
                                    fontSize: vert_block*1.6,
                                    color: Mycolors.green
                                  ),),
                               ),
                                Container(
                                  width: horz_block*8,
                                  height: horz_block*8,
                                  decoration: BoxDecoration(
                                    color: Mycolors.green,
                                    borderRadius: BorderRadius.circular(10),
                                    
                                  ),
                                  child: Center(
                                    child: Icon(Customicon.add_cart,color: Colors.white),
                                  ),
                                )
                             ],
                           ),
                              
                            ],
                          ),
                        );
  }
}