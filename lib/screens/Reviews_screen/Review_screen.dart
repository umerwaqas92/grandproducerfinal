import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Item_detail_screen/reviews/review.dart';
import 'package:grocery/screens/Item_detail_screen/wriet_a_review/dialogue.dart';

class ReviewsScreen extends StatefulWidget {
  @override
  _ReviewsScreenState createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
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
  title:  Text('Reviews',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'aer',
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
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: vert_block*3,),
              Text('Customer reviews',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'aer',
              fontSize: vert_block*2.2,
              color: Mycolors.bluetext
            ),),
              SizedBox(height: vert_block*3,),

            Review_item(),
            SizedBox(height: vert_block*3,),

            Review_item(),
            SizedBox(height: vert_block*3,),

            Review_item(),
            SizedBox(height: vert_block*3,),

            Review_item(),
            SizedBox(height: vert_block*3,),

            Review_item(),
            SizedBox(height: vert_block*3,),

             InkWell(
              onTap: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewsScreen()));
                     showDialog(
                  context: context,
                  builder: (ctxt) => new Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ReviewDialogue(),
                    
                    
                  )
              );

              },
              child: Container(
               // margin: EdgeInsets.symmetric(horizontal: horz_block*8),
                width: width,
                height: vert_block*6,
                padding: EdgeInsets.symmetric(horizontal: horz_block*4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Mycolors.green),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Write a review',textAlign:TextAlign.center,style: TextStyle(
                    fontFamily: 'SF semibold',
                    fontSize: vert_block*1.6,
                    color: Mycolors.green
              ),),
              Icon(Icons.arrow_forward,color: Mycolors.green,size: 20,)
                  ],
                ),
              ),
            ),
            SizedBox(height: vert_block*5,),

            ],
          ),
        ),
      ),
      
    );
  }
}