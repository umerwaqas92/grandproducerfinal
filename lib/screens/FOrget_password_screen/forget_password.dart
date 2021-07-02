import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Reset_password_screen/reset_password.dart';

class forgetpassword extends StatefulWidget {
  @override
  _forgetpasswordState createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
  bool password=false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
            height: vert_block*14,
          ),
            
             Text('Forgot Password',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*3.4,
            color: Colors.black
          ),),

          SizedBox(height: vert_block*3,),
            Text('Please type your email or phone number below and we can help you reset password',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign:TextAlign.center,style: TextStyle(
            
            fontSize: vert_block*1.6,
            color: Mycolors.graytext
          ),),
          SizedBox(height: vert_block*4,),
          Container(
            height: vert_block*5,
            child: TextField(
              
              style: TextStyle(
                fontSize: vert_block*1.6
              ),
              decoration: new InputDecoration(
                
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                
                  borderSide: BorderSide(color: Mycolors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Mycolors.border,),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
              
              hintStyle: TextStyle(
                fontSize: vert_block*1.6,
                  color: Mycolors.graytext
              ),
              hintText: 'Email or Phone Number',
        ),
            ),
          ),
         
          SizedBox(
            height: vert_block*14,
          ),
          InkWell(
            onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>resetpassword()));

            },
            child: Container(
              width: width,
              height: vert_block*6,
              decoration: BoxDecoration(
                color: Mycolors.green,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text('Send',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'SF semibold',
              fontSize: vert_block*1.6,
              color: Colors.white
            ),),
              ),
            ),
          ),
          Expanded(child: SizedBox())
          
          ],
        ),
        
        
      ),
    );
  }
}