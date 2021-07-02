import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/profile_screen/widget/widget1.dart';
import 'package:grocery/screens/profile_screen/widget/widget2.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> names=['Account Informations','My Order','Payment Method','Delivery Address'];
  List<String> names2=['Settings','Privacy Policy','About us','Share App'];
  List<IconData> icons=[Customicon.search,Customicon.order,Customicon.payment,Customicon.address];
  List<IconData> icons2=[Customicon.setting,Customicon.privacy,Customicon.about,Customicon.share];
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
        child: Column(
          children: [
            Container(
              width: width,
              height: vert_block*19,
              color: Colors.white,
              child: Stack(
                
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Container(
                          width: horz_block*25,
                          height: horz_block*25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Mycolors.boxfill1
                          ),
                        ),

                        SizedBox(height: vert_block,),

                         Text('John Doe',style: TextStyle(
           fontWeight: FontWeight.w600,
           // fontFamily: 'SF semibold',
            fontSize: vert_block*1.7,
            color: Mycolors.fruitnamecolor
          ),),
                        SizedBox(height: vert_block,),
           Text('JohnDoe@gmail.com',style: TextStyle(
           // fontWeight: FontWeight.bold,
           // fontFamily: 'SF semibold',
            fontSize: vert_block*1.4,
            color: Mycolors.graytext
          ),),
                      ],
                    ),
                    
                  ),

                  Positioned
                  (
                    top: vert_block*8,
                    right: horz_block*38,                    
                    child: Icon(Icons.add_circle,color: Mycolors.green,))
                ],
              ),
            ),


                 Expanded(
                   child: Container(
                     width: width,
                     
                    // color: Colors.red,
                     child: SingleChildScrollView(
                       child: Column(
                         children: [
            SizedBox(height: vert_block*2,),
                            Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*29,
      padding: EdgeInsets.symmetric(horizontal: horz_block*0,vertical: vert_block*1.5),
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

      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) =>  Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: width/1.3,
            height: 1,
            color: Mycolors.border,
          ),
        ),
        itemCount: 4,
  itemBuilder: (_, i) {
    return widget1items(name: names[i],no: i,icon: icons[i],);
  },
)
      
      ),

      SizedBox(height: vert_block*2,),

                  Container(
                  margin: EdgeInsets.symmetric(horizontal: horz_block*4),
      width: width,
      height: vert_block*29,
      padding: EdgeInsets.symmetric(horizontal: horz_block*0,vertical: vert_block*1.5),
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

      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) =>  Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: width/1.3,
            height: 1,
            color: Mycolors.border,
          ),
        ),
        itemCount: 4,
  itemBuilder: (_, i) {
    return widget2items(name: names2[i],no: i,icon: icons2[i],);
  },
)
      
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
          Container(
                                    width: horz_block*8,
                                    height: horz_block*8,
                                    decoration: BoxDecoration(
                                      color: Mycolors.boxfill1,
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    child: Center(
                                      child: Icon(Customicon.logout,color: Mycolors.border),
                                    ),
                                  ) ,
          Text('      Log Out',textAlign:TextAlign.start,style: TextStyle(
                                       // fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.6,
                                      color: Mycolors.fruitnamecolor
                                    ),),
        ],
      ),
      ),
      SizedBox(height: vert_block*2,),

                         ],
                       ),
                     ),
                   ),
                 )
          ],
        ),
      ),
      
    );
  }
}