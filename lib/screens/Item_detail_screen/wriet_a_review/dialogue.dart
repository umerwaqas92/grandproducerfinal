import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';

class ReviewDialogue extends StatefulWidget {
  @override
  _ReviewDialogueState createState() => _ReviewDialogueState();
}

class _ReviewDialogueState extends State<ReviewDialogue> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horz_block*6),
      width: width,
      height: height/1.8,
      decoration: BoxDecoration(
      color: Mycolors.lightblue,
      borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

           Text("Rate this product",textAlign:TextAlign.center,style: TextStyle(
            
            fontSize: vert_block*2,
            color: Colors.black
          ),),

           RatingBar(
           //itemSize: vert_block*1.3,

   initialRating: 4,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   ratingWidget: RatingWidget(
     full: Icon(Icons.star_rate_rounded,color: Colors.amber,),
     half: Icon(Icons.star_half_rounded,color: Colors.amber),
     empty:Icon(Icons.star_border_rounded,color: Colors.amber),
   ),
   itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
   onRatingUpdate: (rating) {
     print(rating);
   },
),
SizedBox(height: vert_block*3,),

 Row(
   children: [
     Text("Let us know what you think",textAlign:TextAlign.start,style: TextStyle(
                
                fontSize: vert_block*1.4,
                color: Colors.black
              ),),
   ],
 ),

  Container(
      margin: EdgeInsets.only(top: 5,),
      width: width,
      height: vert_block*14,
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
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 4,
        style: TextStyle(
          
                  fontSize: vert_block*1.6
                ),
        decoration: InputDecoration.collapsed(
          
           hintStyle: TextStyle(
                  fontSize: vert_block*1.6,
                    color: Mycolors.graytext
                ),
          hintText: 'Write your review here …'
        ),
      ),
      ),
SizedBox(height: vert_block*4,),

      InkWell(
            onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>resetpassword()));

            },
            child: Container(
              //margin: EdgeInsets.symmetric(horizontal: horz_block*6),
              width: width,
              height: vert_block*6,
              decoration: BoxDecoration(
                  color: Mycolors.lightblue,
                  border: Border.all(color: Mycolors.green),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                  child: Text('Submit Review',textAlign:TextAlign.center,style: TextStyle(
              //fontFamily: 'SF semibold',
              fontSize: vert_block*1.6,
              color: Mycolors.green
            ),),
              ),
            ),
          ),


        ],
      ),
    );
  }
}