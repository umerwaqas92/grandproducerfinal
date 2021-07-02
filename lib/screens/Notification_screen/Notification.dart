import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/constants.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Home_not_login/home_not_login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Notificationscreen extends StatefulWidget {
  @override
  _NotificationscreenState createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  @override
  Widget build(BuildContext context) {
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    bool togglevalue=true;

    return Scaffold(

      body: Container(
        width: width,
        height: height,
        color: Mycolors.white,
        child: Column(
          children: [
            ClipPath(
              clipper: Oval(),
              child: Container(
                width: width,
                height: height/1.7,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Center(
                  child: Image.asset('assets/notif.png'),
                ),
              ),
            ),
            SizedBox(height: vert_block*6,),
            Text('Daily Notification',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*3.4,
            color: Colors.black
          ),),

          SizedBox(height: vert_block*5,),
            Text('Get notified about our update and \nnews',textAlign:TextAlign.center,style: TextStyle(
            
            fontSize: vert_block*1.6,
            color: Mycolors.graytext
          ),),
          SizedBox(height: vert_block*5,),
            // FlutterSwitch(
            //   value: togglevalue,
            //   // activeText: "All Good. Negative.",
            //   // inactiveText: "Under Quarantine.",
            //
            //   valueFontSize: 10.0,
            //   width: 110,
            //   borderRadius: 30.0,
            //   showOnOff: true,
            //   // showOnOff: true,
            //
            //   onToggle: (vv){
            //     setState(() {
            //       togglevalue=vv;
            //     });
            //   },
            //
            //
            // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  // ScaffoldMessenger.of(context)
                  //     .showSnackBar(SnackBar(content: Text("You will not get notification"),) );
                  Alert(
                    context: context,
                    type: AlertType.info,
                    title: "Notification Disabled",
                    content: Icon(Icons.notifications_off),
                    // desc: "You will not reacive any notification from us",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Ok",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () async {
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          prefs.setBool(Constants.get_notififcation, true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>homenotlogin()));
                        },
                        width: 120,
                      )
                    ],
                  ).show();

                },
                child: Container(
            width: horz_block*19,
            height: vert_block*5.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Mycolors.red
            ),
            child: Center(
                child: Text('NO',textAlign:TextAlign.center,style: TextStyle(

            fontSize: vert_block*1.6,
            color: Colors.white
          ),) ,
            ),
          ),
              ),
          SizedBox(width: horz_block*12,),
          InkWell(
            onTap: () async {

              Alert(
                context: context,
                type: AlertType.info,
                title: "Notification Enabled",
                content: Icon(Icons.notifications),
                // desc: "You will not reacive any notification from us",
                buttons: [
                  DialogButton(
                    child: Text(
                      "Ok",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () async {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setBool(Constants.get_notififcation, true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>homenotlogin()));


                    },
                    width: 120,
                  )
                ],
              ).show();




            },
            child: Container(
              width: horz_block*19,
              height: vert_block*5.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Mycolors.green
              ),
              child: Center(
                child: Text('YES',textAlign:TextAlign.center,style: TextStyle(

              fontSize: vert_block*1.6,
              color: Colors.white
            ),) ,
              ),
            ),
          )
            ],
          )
          ],
        ),

      ),
      
    );
  }
}

class Oval extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}


