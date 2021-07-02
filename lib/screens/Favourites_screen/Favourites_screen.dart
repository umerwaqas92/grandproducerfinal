import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Favourites_screen/Favourites_items/Favourites_items.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
     var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        body: Container(
          width:width ,
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
                    Text('Fruits',textAlign:TextAlign.center,style: TextStyle(
            
          ),),
          Text('Vegatables',textAlign:TextAlign.center,style: TextStyle(
            
          ),)
                    
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
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: width/height*1.9,),
                    // padding: EdgeInsets.all(16),
                      itemBuilder: (_, index) => Favouriteitems(),
                        itemCount: 8,
                      
                      ),
                    ),
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