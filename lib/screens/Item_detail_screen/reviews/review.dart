import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class Review_item extends StatefulWidget {
  @override
  _Review_itemState createState() => _Review_itemState();
}

class _Review_itemState extends State<Review_item> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: width,
      height: vert_block*12,
      padding: EdgeInsets.symmetric(horizontal: horz_block*3,vertical: vert_block),
      decoration: BoxDecoration(
        color: Colors.white,
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text("John Doe",textAlign:TextAlign.center,style: TextStyle(
            
            fontSize: vert_block*1.8,
            color: Colors.black
          ),),
           Text("29 February, 2021",textAlign:TextAlign.center,style: TextStyle(
            
            fontSize: vert_block*1.1,
            color: Colors.black
          ),),
            ],
          ),

         RatingBar(
           itemSize: vert_block*1.3,

   initialRating: 4,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   ratingWidget: RatingWidget(
     full: Icon(Icons.star,color: Colors.amber,),
     half: Icon(Icons.star_half_outlined,color: Colors.amber),
     empty:Icon(Icons.star_border,color: Colors.amber),
   ),
   itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
   onRatingUpdate: (rating) {
     print(rating);
   },
),
SizedBox(height: vert_block*2,),

 Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",style: TextStyle(
            
            fontSize: vert_block*1.4,
            color: Colors.black
          ),),
        ],
      ),
      
    );
  }
}