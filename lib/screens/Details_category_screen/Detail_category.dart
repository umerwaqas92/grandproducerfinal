import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Home_loggedin_screen/Fruits_items/fruits.dart';

class DetailCategory extends StatefulWidget {
  @override
  _DetailCategoryState createState() => _DetailCategoryState();
}

class _DetailCategoryState extends State<DetailCategory> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
appBar: AppBar(
  centerTitle: true,
  title:  Text('Fruits',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'aeh',
              fontSize: vert_block*2.2,
              color: Mycolors.bluetext
            ),),
  backgroundColor: Colors.white,
  elevation: 0,
  leading: Icon(Icons.arrow_back,color: Colors.black,),
   actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Customicon.search,color: Colors.black,),
            )
          ],
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
                    Text('All',textAlign:TextAlign.center,style: TextStyle(
            
          ),),
          Text('For you',textAlign:TextAlign.center,style: TextStyle(
            
          ),),Text('Banana',textAlign:TextAlign.center,style: TextStyle(
            
          ),),
          Text('Banana',textAlign:TextAlign.center,style: TextStyle(
            
          ),),
          Text('Watermelon',textAlign:TextAlign.center,style: TextStyle(
            
           // color: Mycolors.graytext
          ),),
                    
                  ]),
              ),
              SizedBox(height: vert_block,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10,right: 5),
                  child: TabBarView(children: [
                    Container(
                      width: width,
                      height: height,
                      child: GridView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: width/height*1.68,),
                    // padding: EdgeInsets.all(16),
                      itemBuilder: (_, index) => Fruitsitems(),
                        itemCount: 8,
                      
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ]),
                  
                ),
              ),
              SizedBox(height: vert_block,),

            ],
          ),
        ),
        
      ),
    );
  }
}