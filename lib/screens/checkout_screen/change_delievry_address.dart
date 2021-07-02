import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:grocery/screens/checkout_screen/add_new_address.dart';

class Changeaddress extends StatefulWidget {
  @override
  _ChangeaddressState createState() => _ChangeaddressState();
}

class _ChangeaddressState extends State<Changeaddress> {
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
  title:  Text('Change Delivery Address',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'SF Semibold',
              fontSize: vert_block*2.2,
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
                    child: Container(
      margin: EdgeInsets.only(top: 5),
      width: width,
      height: vert_block*18,
      padding: EdgeInsets.symmetric(horizontal: horz_block*3,vertical: vert_block*1.5),
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
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text('Home',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold'
                          fontWeight: FontWeight.w600,
                          fontSize: vert_block*1.5,
                          color: Mycolors.fruitnamecolor
                        ),),
                        InkWell(
                          onTap: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>Changeaddress()));
                          },
                          child: Text('Defalut Address',textAlign:TextAlign.center,style: TextStyle(
                            //fontFamily: 'SF semibold',
                            fontSize: vert_block*1.4,
                            color: Mycolors.green
                          ),),
                        ),
              ],
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: vert_block*1.7,),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,color: Mycolors.border,size: 20,),
                      Text('  147 Kere Terrace, New York, US.',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold',
                          fontSize: vert_block*1.5,
                          color: Mycolors.fruitnamecolor
                        ),),
                    ],
                  ),
                  SizedBox(height: vert_block*1.7,),

                     Row(
                       children: [
                         Icon(Customicon.profile,color: Mycolors.border,),
                         Text('  Todd Benson',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold',
                          fontSize: vert_block*1.5,
                          color: Mycolors.fruitnamecolor
                    ),),
                       ],
                     ),
                  SizedBox(height: vert_block*1.7,),

                     Row(
                       children: [
                      Icon(Icons.phone,color: Mycolors.border,size: 20,),

                         Text('  +1(234)86 1122 099',textAlign:TextAlign.center,style: TextStyle(
                          //fontFamily: 'SF semibold',
                          fontSize: vert_block*1.5,
                          color: Mycolors.fruitnamecolor
                    ),),
                       ],
                     ),
                ],
            )
        ],
      ),
    ),
                  ),
          SizedBox(height: vert_block*2,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: horz_block*4),
                    child: DottedBorder(
                      padding: EdgeInsets.all(00),
                      color: Mycolors.green,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(10),
                      dashPattern: [3,4,3,4],
                      //strokeCap: StrokeCap.butt,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Addnewaddress()));
                        },
                        child: Container(
      //margin: EdgeInsets.only(top: 5),
      width: width,
      height: vert_block*6,
      padding: EdgeInsets.symmetric(horizontal: horz_block*3,vertical: vert_block*1.5),
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
        child: Text('Add new Address',textAlign:TextAlign.center,style: TextStyle(
                            //fontFamily: 'SF semibold',
                            fontSize: vert_block*1.5,
                            color: Mycolors.green
                    ),) ,
      ),
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