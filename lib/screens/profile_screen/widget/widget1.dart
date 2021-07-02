import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/profile_screen/pages/My_orders.dart';
import 'package:grocery/screens/profile_screen/pages/account_information.dart';
import 'package:grocery/screens/profile_screen/pages/payment_method.dart';

class widget1items extends StatefulWidget {
  final String name;
  final IconData icon;
  final int no;

  const widget1items({Key key, this.name, this.icon, this.no}) : super(key: key);
  @override
  _widget1itemsState createState() => _widget1itemsState();
}

class _widget1itemsState extends State<widget1items> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return ListTile(
      
      
      trailing: Icon(Icons.arrow_forward_ios_outlined,color: Mycolors.border,size: 15,),
      leading:Container(
                                    width: horz_block*8,
                                    height: horz_block*8,
                                    decoration: BoxDecoration(
                                      color: Mycolors.green,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(
                                      child: Icon(widget.icon,color: Colors.white),
                                    ),
                                  ) ,
      title: Text(widget.name,textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.fruitnamecolor
                                    ),),
      onTap: () {
        print('${widget.no}');
        if(widget.no==0){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Accountinformation()));
        }
        if(widget.no==1){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Myorders()));
        }
        if(widget.no==2){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Paymentmethod()));
        }
      }, // Handle your onTap here. 
    );
  }
}