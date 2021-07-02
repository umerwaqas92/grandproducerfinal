import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/checkout_screen/complete_order.dart';

class Confirmorderdialogue extends StatefulWidget {
  @override
  _ConfirmorderdialogueState createState() => _ConfirmorderdialogueState();
}

class _ConfirmorderdialogueState extends State<Confirmorderdialogue> {
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
      height: vert_block*30,
      padding: EdgeInsets.symmetric(vertical: horz_block*3),
      child: Column(
        children: [
          Text('Terms & Conditions',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*2.3,
            color: Colors.black
          ),),
          Text('Check / Net Credit',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*2,
            color: Colors.black
          ),),

          SizedBox(height: vert_block*1.5,),
          Container(
            width: width,
            height: 2,
            color: Mycolors.border,
          ),

          SizedBox(height: vert_block*3,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text('Net 30 - Payment is due 30 days After the invoice date. If amount not paid by the due date, 5% Late Fee per day applies.',style: TextStyle(
              fontWeight: FontWeight.w100,
              // fontFamily: 'SF semibold',
              
              fontSize: vert_block*1.4,
              color: Colors.black
            ),),
          ),
          SizedBox(height: vert_block*2,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                                      check=!check;
                                    });
                },
                child: Icon(check?Icons.check_circle: Icons.radio_button_off_outlined,
                color:check?Mycolors.green: Mycolors.border,)),
              Text('   Agree to the Terms & Condition',style: TextStyle(
              fontWeight: FontWeight.w100,
               fontFamily: 'SF semibold',
              
              fontSize: vert_block*1.4,
              color: Colors.black
            ),),

            ],
          ),
               SizedBox(height: vert_block*2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            Container(
              width: horz_block*20,
              height: vert_block*4.7,
              decoration: BoxDecoration(
                color: Mycolors.boxfill1,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text('Cancel',style: TextStyle(
              fontWeight: FontWeight.w100,
               fontFamily: 'SF semibold',
              
              fontSize: vert_block*1.4,
              color: Colors.white
            ),),
              ),
            ),

            SizedBox(width: horz_block*2,),

            InkWell(
              onTap: (){
                Navigator.pop(context);
                 showDialog(
                  context: context,
                  builder: (ctxt) => new Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Completeorder(),)
                    );
              },
              child: Container(
                width: horz_block*20,
                height: vert_block*4.7,
                decoration: BoxDecoration(
                  color: Mycolors.green,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text('Submit',style: TextStyle(
                fontWeight: FontWeight.w100,
                 fontFamily: 'SF semibold',
                
                fontSize: vert_block*1.4,
                color: Colors.white
              ),),
                ),
              ),
            )
            ],
          )
        ],
      ),
      
    );
  }
}