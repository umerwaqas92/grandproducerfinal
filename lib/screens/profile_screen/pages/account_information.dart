import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class Accountinformation extends StatefulWidget {
  @override
  _AccountinformationState createState() => _AccountinformationState();
}

class _AccountinformationState extends State<Accountinformation> {
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
  title:  Text('Account Informations',textAlign:TextAlign.center,style: TextStyle(
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
        child: Column(
          children: [
            SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*7,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*1.5),
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
        children: [
                                
          Text('Log Out',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.graytext
                                    ),),
                                    SizedBox(width: horz_block*15,),
           Text('Todd Benson',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.fruitnamecolor
                                    ),),
        ],
      ),
      ),



       SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*7,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*1.5),
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
        children: [
                                
          Text('Email',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.graytext
                                    ),),
                                    SizedBox(width: horz_block*15,),
           Text('freeslab88@gmail.com',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.fruitnamecolor
                                    ),),
        ],
      ),
      ),


      
       SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*7,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*1.5),
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
        children: [
                                
          Text('Password',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.graytext
                                    ),),
                                    SizedBox(width: horz_block*15,),
           Text('* * * * * * * * *',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.fruitnamecolor
                                    ),),
        ],
      ),
      ),



      
       SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*7,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*1.5),
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
        children: [
                                
          Text('Phone Number',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.graytext
                                    ),),
                                    SizedBox(width: horz_block*15,),
           Text('+1(234)40 5156 999',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.fruitnamecolor
                                    ),),
        ],
      ),
      ),


          ],
        ),
      ),
      
    );
  }
}