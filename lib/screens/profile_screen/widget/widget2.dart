import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/profile_screen/pages/Settings.dart';

class widget2items extends StatefulWidget {
  final String name;
  final IconData icon;
  final int no;

  const widget2items({Key key, this.name, this.icon, this.no}) : super(key: key);
  @override
  _widget2itemsState createState() => _widget2itemsState();
}

class _widget2itemsState extends State<widget2items> {
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
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Settingpage()));
        }
      }, // Handle your onTap here. 
    );
  }
}