import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/FOrget_password_screen/forget_password.dart';
import 'package:grocery/screens/Home_loggedin_screen/home_loggedin.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool password=false;

  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
      width: width,
      height: height,
      child: Column(
        children: [
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
            SizedBox(height: vert_block*2,),
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
                hintText: 'Password',
                suffixIcon: InkWell(
                  onTap: (){
                    setState(() {
                          password=!password;
                                      });
                  },
                  child:password?Icon(Icons.visibility_off_outlined,color: Mycolors.border, ): Icon(Icons.visibility_outlined,color: Mycolors.border,)),
                
          ),
          obscureText:password?false: true,
              ),
            ),
            SizedBox(
              height: vert_block*1,
            ),
            Container(
              width: width,
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>forgetpassword()));
                },
                child: Text('Forgot password',textAlign:TextAlign.center,style: TextStyle(
                
                fontSize: vert_block*1.6,
                color: Mycolors.graytext
            ),),
              ),
            ),
            SizedBox(
              height: vert_block*4,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homeloggedin()));
              },
              child: Container(
                width: width,
                height: vert_block*6,
                decoration: BoxDecoration(
                  color: Mycolors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text('Sign In',textAlign:TextAlign.center,style: TextStyle(
                fontFamily: 'SF semibold',
                fontSize: vert_block*1.6,
                color: Colors.white
              ),),
                ),
              ),
            ),
            SizedBox(
              height: vert_block*10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Mycolors.border,
                  ),
                ),
                Text('Or',textAlign:TextAlign.center,style: TextStyle(
              
              fontSize: vert_block*1.6,
              color: Mycolors.graytext
            ),),
                Expanded(
                  child: Container(
                    height: 1,
                    color: Mycolors.border,
                  ),
                )
              ],
            ),
            Expanded(
              child: SizedBox(
                
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/facebook.png'),
                SizedBox(width: horz_block*4,),
                Image.asset('assets/twitter.png'),
                SizedBox(width: horz_block*4,),
                Image.asset('assets/google.png'),
              ],
            ),
            SizedBox(
              height: vert_block*14,
            ),
        ],
      ),
      
    );
  }
}