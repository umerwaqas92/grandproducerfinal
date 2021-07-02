import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/constants.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Home_not_login/home_not_login.dart';
import 'package:grocery/screens/Notification_screen/Notification.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
    void initState() {
    
    super.initState();
     Timer(Duration(seconds: 1), () async {
       SharedPreferences prefs = await SharedPreferences.getInstance();
       var logcheck=prefs.getBool(Constants.get_notififcation);
       if(logcheck!=null){
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>logcheck?homenotlogin():Notificationscreen()));

       }else{
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Notificationscreen()));

       }

    });
  }
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
        color: Mycolors.white,
        child: Center(
          child: Text('LOGO Here',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*3.2,
            color: Colors.black
          ),),
        ),

      ),
      
    );
  }
}