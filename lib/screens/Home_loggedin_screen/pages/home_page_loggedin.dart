import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Details_category_screen/Detail_category.dart';
import 'package:grocery/screens/Home_loggedin_screen/Fruits_items/fruits.dart';
import 'package:grocery/screens/Item_detail_screen/item_detail.dart';


class homepagelogin extends StatefulWidget {
  @override
  _homepageloginState createState() => _homepageloginState();
}

class _homepageloginState extends State<homepagelogin> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
        // padding: EdgeInsets.symmetric(horizontal: 16),
        width: width,
        height: height,
        color: Mycolors.lightblue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: vert_block*2,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Fruits',textAlign:TextAlign.center,style: TextStyle(
            fontFamily: 'aeh',
            fontSize: vert_block*2.2,
            color: Mycolors.bluetext
          ),),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailCategory()));
            },
            child: Text('See all',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'aer',
              fontSize: vert_block*1.8,
              color: Mycolors.graytext
            ),),
          ),
                  ],
                ),
              ),
              SizedBox(height: vert_block*1.2,),
              DefaultTabController(
                length: 5,
                child: Column(
                  children: [
                    Container(
                  width: width,
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
          Text('Apple',textAlign:TextAlign.center,style: TextStyle(
            
          ),),Text('Banana',textAlign:TextAlign.center,style: TextStyle(
            
          ),),
          Text('Kiwi',textAlign:TextAlign.center,style: TextStyle(
            
          ),),
          Text('Watermelon',textAlign:TextAlign.center,style: TextStyle(
            
           // color: Mycolors.graytext
          ),),
                    
                  ]),
                  
                ),
                SizedBox(height: vert_block*1.7,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: width,
                  height: vert_block*60,
                  //color: Colors.white,
                  child: TabBarView(children: [
                    Container(
                      width: width,
                      height: height,
                      child: InkWell(
                        onTap: (){
                          print('item clicked');
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Itemdetails()));
                        },
                        child: GridView.builder(
                          
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.73,),
                    // padding: EdgeInsets.all(16),
                        itemBuilder: (_, index) => Fruitsitems(),
                          itemCount: 4,
                        
                        ),
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    
                  ]),
                ),
                  ],
                ),
              ),

               SizedBox(height: vert_block*2,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Vegatables',textAlign:TextAlign.center,style: TextStyle(
            fontFamily: 'aeh',
            fontSize: vert_block*2.2,
            color: Mycolors.bluetext
          ),),
          Text('See all',textAlign:TextAlign.center,style: TextStyle(
            fontFamily: 'aer',
            fontSize: vert_block*1.8,
            color: Mycolors.graytext
          ),),
                  ],
                ),
              ),
              SizedBox(height: vert_block*1.2,),
             DefaultTabController(length: 5,
               child: Column(
                 children: [
                    Container(
                  width: width,
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
          Text('Kale',textAlign:TextAlign.center,style: TextStyle(
            
          ),),Text('Celery',textAlign:TextAlign.center,style: TextStyle(
            
          ),),
          Text('Tomotes',textAlign:TextAlign.center,style: TextStyle(
            
          ),),
          Text('Carrot',textAlign:TextAlign.center,style: TextStyle(
            
           // color: Mycolors.graytext
          ),),
                    
                  ]),
                  
                ),
                SizedBox(height: vert_block*1.7,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: width,
                  height: vert_block*60,
                  //color: Colors.white,
                  child: TabBarView(children: [
                    Container(
                      width: width,
                      height: height,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.73,),
                    // padding: EdgeInsets.all(16),
                      itemBuilder: (_, index) => Fruitsitems(),
                        itemCount: 4,
                      
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    
                  ]),
                ),
                 ],
               ),
             )

              
              
            ],
          ),
        ),
      );
  }
}