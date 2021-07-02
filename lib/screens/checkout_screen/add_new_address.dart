import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Addnewaddress extends StatefulWidget {
  @override
  _AddnewaddressState createState() => _AddnewaddressState();
}

class _AddnewaddressState extends State<Addnewaddress> {
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
    return Scaffold(

      body: Container(
        width: width,
        height: height,
        color: Mycolors.lightblue,
        child: Stack(
          children: [
            Container(
              width: width,
              height: vert_block*20,
              child: Image.asset('assets/back.png',fit: BoxFit.cover,),
            ),


            ////Customa app bar


            Container(
              alignment: Alignment.bottomCenter,
              width: width,
              height: vert_block*10,
              //color: Colors.red,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horz_block*4),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back,color: Mycolors.border,)),
                      SizedBox(width: horz_block*4,),
                     Expanded(
                       child: Container(
                        // margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                height: vert_block*5.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
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
                  hintText: 'Type location you want...',
                  suffixIcon: Container(
                    margin: EdgeInsets.all(6),
                                       width: horz_block*8,
                                      height: horz_block*8,
                                      decoration: BoxDecoration(
                                        color: Mycolors.green,
                                        borderRadius: BorderRadius.circular(10),
                                        
                                      ),
                                      child: Center(
                                        child: Icon(Customicon.search,color: Colors.white),
                                      ),
                                    ),
                                  
          ),
                ),
            ),
                     ),

                  ],
                ),
              ),
            ),


            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height/2.3,
                decoration: BoxDecoration(
                  boxShadow: [
                                      BoxShadow(
                                        color: Mycolors.shadow.withOpacity(0.5),
                                        spreadRadius: 7,
                                        blurRadius: 7,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                  color: Colors.white
                ),
               // color: Colors.red,
               child: Column(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(left: horz_block*4,right: horz_block*4,top: horz_block*4),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                          Text('Clear',textAlign:TextAlign.center,style: TextStyle(
                            //fontFamily: 'SF semibold'
                           // fontWeight: FontWeight.w600,
                            fontSize: vert_block*1.5,
                            color: Mycolors.graytext
                          ),),
                           Text('Add New Address',textAlign:TextAlign.center,style: TextStyle(
                            //fontFamily: 'SF semibold'
                            fontWeight: FontWeight.w400,
                            fontSize: vert_block*1.7,
                            color: Mycolors.fruitnamecolor
                          ),),
                           Text('Save',textAlign:TextAlign.center,style: TextStyle(
                            //fontFamily: 'SF semibold'
                           // fontWeight: FontWeight.w600,
                            fontSize: vert_block*1.5,
                            color: Mycolors.green
                          ),),
                       ],
                     ),
                   ),

                   SizedBox(height: vert_block*2,),

                   Container(
                     width: width,
                     height: 1.4,
                     color: Mycolors.border,
                   ),
                   SizedBox(height: vert_block*2,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: horz_block*4),
                  child: Row(
                    children: [
                      Container(
                        width: horz_block*22,
                      color: Mycolors.lightblue,
              height: vert_block*6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Customicon.home,color: Mycolors.graytext),
                  
                  Icon(Icons.keyboard_arrow_down_rounded,size: 18,color: Mycolors.graytext,)
                ],
              ),
              ),  
                SizedBox(width: horz_block*3,),
             // Expanded(child: SizedBox()),


                      Expanded(
                        child: Container(
                         // width: horz_block*50,
                        color: Mycolors.lightblue,
              height: vert_block*6,
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
                        hintText: 'Name of Address',
                        
                                      
          ),
              ),
            ),
                      ),
                    ],
                  ),
                ),

                   SizedBox(height: vert_block*2,),

                   Container(
                     margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                color: Mycolors.lightblue,
              height: vert_block*6,
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
                hintText: 'Your Address',
                suffixIcon: Container(
                  margin: EdgeInsets.all(6),
                                   width: horz_block*8,
                                  height: horz_block*8,
                                  decoration: BoxDecoration(
                                    color: Mycolors.green,
                                    borderRadius: BorderRadius.circular(10),
                                    
                                  ),
                                  child: Center(
                                    child: Icon(Icons.location_on_outlined,color: Colors.white),
                                  ),
                                ),
                              
          ),
              ),
            ),

             SizedBox(height: vert_block*2,),
            Container(
              height: vert_block*6.2,
              margin: EdgeInsets.symmetric(horizontal: horz_block*4),
              decoration: BoxDecoration(
                color: Mycolors.lightblue,
                borderRadius: BorderRadius.circular(9),
               
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

            SizedBox(height: vert_block*2,),

             Container(
               padding: EdgeInsets.symmetric(horizontal: horz_block*4),
               child: Row(
                 children: [
                   InkWell(
            onTap: (){
                    setState(() {
                                    check=!check;
                                  });
            },
            
            child: Icon(check?Icons.radio_button_checked_sharp: Icons.radio_button_off_outlined,color:check?Mycolors.green: Mycolors.border,)),

            Text('   Default Delivery Address',textAlign:TextAlign.center,style: TextStyle(
                              //fontFamily: 'SF semibold'
                              //fontWeight: FontWeight.w400,
                              fontSize: vert_block*1.5,
                              color: Mycolors.fruitnamecolor
                            ),),
                 ],
               ),
             )
          

                 ],
               ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}