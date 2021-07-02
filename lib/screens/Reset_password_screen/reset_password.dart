import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class resetpassword extends StatefulWidget {
  @override
  _resetpasswordState createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
  bool password=false;
  bool repassword=false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_sharp,color: Colors.black,),
      ),
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
            
             Text('Reset Password',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*3.4,
            color: Colors.black
          ),),

          SizedBox(height: vert_block*3,),
            Text('And now, you can type your new \npassword and confirm it below',
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
              hintText: 'New Password',
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
              hintText: 'Confirm New Password',
              suffixIcon: InkWell(
                onTap: (){
                  setState(() {
                        password=!password;
                                    });
                },
                child:repassword?Icon(Icons.visibility_off_outlined,color: Mycolors.border, ): Icon(Icons.visibility_outlined,color: Mycolors.border,)),
              
        ),
        obscureText:repassword?false: true,
            ),
          ),
         
          SizedBox(
            height: vert_block*14,
          ),
          Container(
            width: width,
            height: vert_block*6,
            decoration: BoxDecoration(
              color: Mycolors.green,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Text('Reset Password',textAlign:TextAlign.center,style: TextStyle(
            fontFamily: 'SF semibold',
            fontSize: vert_block*1.6,
            color: Colors.white
          ),),
            ),
          ),
          Expanded(child: SizedBox())
          
          ],
        ),
        
        
      ),
    );
  }
}