import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/profile_screen/pages/generate_invoice.dart';

class Myorders extends StatefulWidget {
  @override
  _MyordersState createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
  title:  Text('My Orders',textAlign:TextAlign.center,style: TextStyle(
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
              Container(
                  width: width,
                  height: vert_block*6,
                  color: Colors.white,
                  child: TabBar(
                      
                      indicatorColor: Mycolors.green,
                      indicatorSize: TabBarIndicatorSize.label,
                      unselectedLabelStyle: TextStyle(
                         fontFamily: 'SF semibold',
              fontSize: vert_block*1.5,
                      ),
                      isScrollable: true,
                    unselectedLabelColor: Colors.black,
                    labelColor: Mycolors.green,
                    labelStyle: TextStyle(
                         fontFamily: 'SF semibold',
              fontSize: vert_block*1.5,
                      ),
                      tabs: [
                      Text('Ongoing',textAlign:TextAlign.center,style: TextStyle(
              
            ),),
            Text('Complete',textAlign:TextAlign.center,style: TextStyle(
              
            ),)
                      
                    ]),
                ),

                 SizedBox(height: vert_block,),

               Expanded(
                child: Container(
                 // margin: EdgeInsets.only(left: 10,right: 5),
                  child: TabBarView(children: [
                    Container(
                      width: width,
                      height: height,
                      child: Column(
                        children: [
                          SizedBox(height: vert_block*2,),

                  Container(
            margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                    child: Container(
      margin: EdgeInsets.only(top: 5),
      width: width,
      height: vert_block*29,
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
        children: [
            Padding(
                      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*2),
              child: Row(
                children: [
                  Text('Order ID',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.graytext
                              ),),
                    Expanded(child: SizedBox()),
                     Text('#OD2204',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                               // fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.green
                              ),),
                ],
              ),
            ),

            Container(
              width: width,
              height: 2,
              color: Mycolors.border,
            ),

              Padding(
                      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*2),
              child: Row(
                children: [
                    Text('Order List',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.graytext
                              ),),
                              Expanded(child: SizedBox()),
                     Text('12 Items',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                               // fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Colors.black
                              ),),
                    Icon(Icons.keyboard_arrow_down_rounded,color: Mycolors.border,)
                ],
              ),
            ),

            Container(
              width: width,
              height: 2,
              color: Mycolors.border,
            ),

            Padding(
                      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*2),
              child: Row(
                children: [
                    Text('Total Bill',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.graytext
                              ),),
                              Expanded(child: SizedBox()),
                     Text('\$56.68',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                               // fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.green
                              ),),
                //  Icon(Icons.keyboard_arrow_down_rounded,color: Mycolors.border,)
                ],
              ),
            ),

            Container(
              width: width,
              height: 2,
              color: Mycolors.border,
            ),

           
             Padding(
                      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: vert_block*2),
              child: Row(
                children: [
                    Text('Invoice',textAlign:TextAlign.center,style: TextStyle(
                                //fontFamily: 'SF semibold',
                                fontWeight: FontWeight.w600,
                                fontSize: vert_block*1.5,
                                color: Mycolors.graytext
                              ),),
                              Expanded(child: SizedBox()),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Generateinvoice()));
                      },
                      child: Container(
                        width: horz_block*20,
                        height: vert_block*4,
                        decoration: BoxDecoration(
                          color: Mycolors.green,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child:  Text('Generate',textAlign:TextAlign.center,style: TextStyle(
                                  //fontFamily: 'SF semibold',
                                 // fontWeight: FontWeight.w600,
                                  fontSize: vert_block*1.5,
                                  color: Colors.white
                                ),),
                        ),
                      ),
                    )
                 // Icon(Icons.keyboard_arrow_down_rounded,color: Mycolors.border,)
                ],
              ),
            ),

           
        ],
      ),
      ),
                  ),

                  SizedBox(
              height: vert_block*4,
            ),
            InkWell(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Homeloggedin()));
              },
              child: Container(
                width: width,
                height: vert_block*6,
            margin: EdgeInsets.symmetric(horizontal: horz_block*4),
                decoration: BoxDecoration(
                  color: Mycolors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text('Go to Shopping',textAlign:TextAlign.center,style: TextStyle(
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
                    Container(),
                    
                  ]),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}