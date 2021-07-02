import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class Paymentmethod extends StatefulWidget {
  @override
  _PaymentmethodState createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  bool check=false;
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
  title:  Text('Payment Method',textAlign:TextAlign.center,style: TextStyle(
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

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(height: vert_block*3,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horz_block*4),
                  child: Text('My Payment Method',textAlign:TextAlign.center,style: TextStyle(
                                  //fontFamily: 'SF semibold',
                                  fontWeight: FontWeight.w500,
                                  fontSize: vert_block*1.8,
                                  color: Colors.black
                                ),),
                ),
                SizedBox(height: vert_block*2,),
            Container(
                      child: FittedBox(
                        child: Row(
                          children: [
                            Container(
                              width: width,
                              height: vert_block*8,
                              margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                              padding: EdgeInsets.only(left: horz_block*5,right: horz_block*6),
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
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/card.png',scale: 0.8,),
                                  SizedBox(width: horz_block*15,),
                                   Text('**** **** **** *368',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w500,
                                fontSize: vert_block*2.3,
                                color: Mycolors.fruitnamecolor
                              ),),
                              Expanded(child: SizedBox()),
                              Icon(Icons.arrow_forward_ios_outlined,color: Mycolors.border,size: 15,)
                                ],
                              ),
                            ),
                            SizedBox(width: horz_block*2,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                            check=!check;
                                                              });
                              },
                              child: Icon(check?Icons.check_circle_rounded:
                               Icons.radio_button_off_outlined,color:check?Mycolors.green: Mycolors.graytext.withOpacity(0.6),size: vert_block*3,),
                            ),
                            SizedBox(width: horz_block*3,),


                          ],
                        ),
                      ),
                    ),


                    SizedBox(height: vert_block*2,),
            Container(
                      child: FittedBox(
                        child: Row(
                          children: [
                            Container(
                              width: width,
                              height: vert_block*8,
                              margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                              padding: EdgeInsets.only(left: horz_block*5,right: horz_block*6),
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
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/visa.png',scale: 0.8,),
                                  SizedBox(width: horz_block*15,),
                                   Text('**** **** **** *368',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w500,
                                fontSize: vert_block*2.3,
                                color: Mycolors.fruitnamecolor
                              ),),
                              Expanded(child: SizedBox()),
                              Icon(Icons.arrow_forward_ios_outlined,color: Mycolors.border,size: 15,)
                                ],
                              ),
                            ),
                            SizedBox(width: horz_block*2,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                            check=!check;
                                                              });
                              },
                              child: Icon(check?Icons.check_circle_rounded:
                               Icons.radio_button_off_outlined,color:check?Mycolors.green: Mycolors.graytext.withOpacity(0.6),size: vert_block*3,),
                            ),
                            SizedBox(width: horz_block*3,),


                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: vert_block*5,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horz_block*4),
                  child: Text('Add new Method',textAlign:TextAlign.center,style: TextStyle(
                                  //fontFamily: 'SF semibold',
                                  fontWeight: FontWeight.w500,
                                  fontSize: vert_block*1.8,
                                  color: Colors.black
                                ),),
                ),

                
                    SizedBox(height: vert_block*2,),
            Container(
                      child: FittedBox(
                        child: Row(
                          children: [
                            Container(
                              width: width,
                              height: vert_block*7,
                              margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                              padding: EdgeInsets.only(left: horz_block*5,right: horz_block*6),
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
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/visa.png',scale: 0.8,),
                                  SizedBox(width: horz_block*7,),
                                   Text('Visa Card',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w500,
                                fontSize: vert_block*2,
                                color: Mycolors.fruitnamecolor
                              ),),
                              Expanded(child: SizedBox()),
                              Icon(Icons.keyboard_arrow_down_rounded,color: Mycolors.border,size: 15,)
                                ],
                              ),
                            ),
                           


                          ],
                        ),
                      ),
                    ),

                            SizedBox(height: vert_block*2,),


                     Container(
                 height: vert_block*6,
                              margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                              padding: EdgeInsets.only(left: horz_block*5,right: horz_block*6),
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
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: vert_block*1.6
                    ),
                    decoration: new InputDecoration.collapsed(
                      
                   
                    //contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                    
                    hintStyle: TextStyle(
                      fontSize: vert_block*1.6,
                        color: Mycolors.graytext
                    ),
                    hintText: 'Card No',
            ),
                  ),
                ),
              ),

               SizedBox(height: vert_block*2,),


                     Row(
                       children: [
                         Expanded(
                           child: Container(
                            // width: horz_block*40,
                 height: vert_block*6,
                                    margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                                    padding: EdgeInsets.only(left: horz_block*5,right: horz_block*6),
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
                child: Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                            fontSize: vert_block*1.6
                    ),
                    decoration: new InputDecoration.collapsed(
                            
                   
                    //contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                    
                    hintStyle: TextStyle(
                            fontSize: vert_block*1.6,
                              color: Mycolors.graytext
                    ),
                    hintText: 'Valid thru',
            ),
                  ),
                ),
              ),
                         ),

               Expanded(
                 child: Container(
                            // width: horz_block*40,
                   height: vert_block*6,
                                    margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                                    padding: EdgeInsets.only(left: horz_block*5,right: horz_block*6),
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
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                            fontSize: vert_block*1.6
                      ),
                      decoration: new InputDecoration.collapsed(
                            
                     
                      //contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      
                      hintStyle: TextStyle(
                            fontSize: vert_block*1.6,
                              color: Mycolors.graytext
                      ),
                      hintText: 'CVV',
            ),
                    ),
                  ),
              ),
               ),
                       ],
                     ),


                
                SizedBox(
                height: vert_block*4,
              ),
              InkWell(
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Homeloggedin()));
                },
                child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                  width: width,
                  height: vert_block*6,
                  decoration: BoxDecoration(
                    color: Mycolors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text('Add new Method',textAlign:TextAlign.center,style: TextStyle(
                  fontFamily: 'SF semibold',
                  fontSize: vert_block*1.6,
                  color: Colors.white
                ),),
                  ),
                ),
              ),

              

            ],
          ),
        ),
      ),
      
    );
  }
}