import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/FOrget_password_screen/forget_password.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool password=false;
   String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');
 bool check=false;
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                hintText: 'Full Name',
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
                hintText: 'Email',
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
             SizedBox(height: vert_block*2,),
            Container(
              height: vert_block*6.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: Mycolors.border
                )
              ),
              
              child: Center(
                child: InternationalPhoneNumberInput(
                
                  inputDecoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                       hintStyle: TextStyle(
                      fontSize: vert_block*1.6,
                        color: Mycolors.graytext
                    ),
                    hintText: '(000)00 000 0000',

                  ),
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  textAlignVertical: TextAlignVertical.top,
                  ignoreBlank: false,

                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Mycolors.graytext),
                  initialValue: number,
                  //textFieldController: controller,
                  formatInput: true,
                  keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                  inputBorder: OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
            ),
            SizedBox(
              height: vert_block*2,
            ),
             Text('Choose the Delivery type:',textAlign:TextAlign.center,style: TextStyle(
            
            fontSize: vert_block*1.6,
            color: Mycolors.graytext
          ),),
          SizedBox(
              height: vert_block*2,
            ),
          Container(
              height: vert_block*5,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: Mycolors.border
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Resturant Delivery',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*1.5,
            color: Colors.black
          ),),

          InkWell(
            onTap: (){
              setState(() {
                              check=!check;
                            });
            },
            
            child: Icon(check?Icons.radio_button_checked_sharp: Icons.radio_button_off_outlined,color:check?Mycolors.green: Mycolors.border,))
          
                ],
              ),
              ),

              SizedBox(
              height: vert_block*2,
            ),
          Container(
              height: vert_block*5,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: Mycolors.border
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Home Delivery',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*1.5,
            color: Colors.black
          ),),

          Text('Comming soon',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*1,
            color: Mycolors.red
          ),)

          
                ],
              ),
              ),

          Expanded(
            child: SizedBox(
              
            ),
          ),
          InkWell(
            onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>resetpassword()));

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
            
            SizedBox(
              height: vert_block*7,
            ),
            
        ],
      ),
      
    );
  }
}