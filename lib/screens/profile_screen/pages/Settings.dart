import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Settingpage extends StatefulWidget {
  @override
  _SettingpageState createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  bool isSwitched=false;
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
  title:  Text('Settings',textAlign:TextAlign.center,style: TextStyle(
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
            SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*7,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*1.5),
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
      child: Row(
        children: [
                                
          Container(
                                    width: horz_block*8,
                                    height: horz_block*8,
                                    decoration: BoxDecoration(
                                      color: Mycolors.green,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(
                                      child: Icon(Customicon.bell,color: Colors.white),
                                    ),
                                  ) ,
                                    SizedBox(width: horz_block*4,),
           Text('Notifications',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.graytext
                                    ),),
                Expanded(child: SizedBox()),
        FlutterSwitch(
            width: 50.0,

            height: 25.0,
            // valueFontSize: 25.0,
            toggleBorder: Border.all(color: Mycolors.white),
            switchBorder: Border.all(color: Mycolors.boxfill1),
            inactiveColor: Mycolors.boxfill,
            activeColor: Mycolors.green,
             toggleSize: 24.0,
            value: isSwitched,
            // borderRadius: 30.0,
            padding: 0.0,
            showOnOff: false,
            onToggle: (val) {
              setState(() {
                isSwitched = val;
              });
            },
          ),
          
        ],
      ),
      ),



       SizedBox(height: vert_block*2,),

       // SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*7,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*1.5),
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
      child: Row(
        children: [
                                
          Container(
                                    width: horz_block*8,
                                    height: horz_block*8,
                                    decoration: BoxDecoration(
                                      color: Mycolors.green,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(
                                      child: Icon(Customicon.apple,color: Colors.white),
                                    ),
                                  ) ,
                                    SizedBox(width: horz_block*4,),
           Text('Rate us on the App Store',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.graytext
                                    ),),
               
          
        ],
      ),
      ),



       SizedBox(height: vert_block*2,),

       // SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*7,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*1.5),
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
      child: Row(
        children: [
                                
          Container(
                                    width: horz_block*8,
                                    height: horz_block*8,
                                    decoration: BoxDecoration(
                                      color: Mycolors.green,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(
                                      child: Icon(Customicon.android,color: Colors.white),
                                    ),
                                  ) ,
                                    SizedBox(width: horz_block*4,),
           Text('Rate us on the Google Play',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.graytext
                                    ),),
               
          
        ],
      ),
      ),

      
       SizedBox(height: vert_block*2,),

       // SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*7,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*1.5),
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
      child: Row(
        children: [
                                
          Container(
                                    width: horz_block*8,
                                    height: horz_block*8,
                                    decoration: BoxDecoration(
                                      color: Mycolors.green,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(
                                      child: Icon(Customicon.message,color: Colors.white),
                                    ),
                                  ) ,
                                    SizedBox(width: horz_block*4,),
           Text('Contact Us',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.graytext
                                    ),),
               
          
        ],
      ),
      ),


      
       SizedBox(height: vert_block*2,),

       // SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*7,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*1.5),
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
      child: Row(
        children: [
                                
          Container(
                                    width: horz_block*8,
                                    height: horz_block*8,
                                    decoration: BoxDecoration(
                                      color: Mycolors.green,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(
                                      child: Icon(Customicon.terms,color: Colors.white),
                                    ),
                                  ) ,
                                    SizedBox(width: horz_block*4,),
           Text('Terms and Conditions',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.graytext
                                    ),),
               
          
        ],
      ),
      ),
               

          ],
        ),
      ),
      
    );
  }
}