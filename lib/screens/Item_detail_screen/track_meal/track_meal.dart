import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';


class Trackmeal extends StatefulWidget {
  @override
  _TrackmealState createState() => _TrackmealState();
}

class _TrackmealState extends State<Trackmeal> {
  
  
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
      width: width,
      height: height/1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),

      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: horz_block*4,vertical: horz_block*4),
            child: Row(
              children: [
                Icon(Icons.close,color:Colors.black,size: 20,),
                Expanded(child: SizedBox()),
                 Text('Add new Items',textAlign:TextAlign.center,style: TextStyle(
         // fontFamily: 'SF semibold',
        // fontWeight: FontWeight.w600,
            fontSize: vert_block*1.7,
            color: Colors.black
        ),),
                Expanded(child: SizedBox()),
              ],
            ),
          ),

          Container(
            width: width,
            height: 1,
            color: Mycolors.border,
          ),

SizedBox(height: vert_block*2,),
          Container(
              width: width,
              height: vert_block*8,
              margin: EdgeInsets.only(left: horz_block*4),
              //color: Colors.red,
              child: Row(
                children: [
                  Container(
                    width: horz_block*17,
                    height: height,
                    decoration: BoxDecoration(
                    color: Mycolors.boxfill1,
                    borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: vert_block*2,),
                      Text('  Australian Cherry',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'SF semibold',
              fontSize: vert_block*1.6,
              color: Mycolors.fruitnamecolor
            ),),
            Expanded(child: SizedBox()),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('  price per item',textAlign:TextAlign.center,style: TextStyle(
                  //fontFamily: 'SF semibold',
                  fontSize: vert_block*1.4,
                  color: Mycolors.graytext
            ),),
            SizedBox(width: horz_block*40,),
            Text('\$20.78',textAlign:TextAlign.center,style: TextStyle(
                  //fontFamily: 'SF semibold',
                  fontSize: vert_block*1.4,
                  color: Mycolors.green
            ),),
            
               ],
             ),
                     SizedBox(height: vert_block,),

                    ],
                  )
                ],
              ),
            ),
                     SizedBox(height: vert_block*2,),

              Container(
            width: width,
            height: 1,
            color: Mycolors.border,
            margin: EdgeInsets.symmetric(horizontal: horz_block*4),
          ),


          
SizedBox(height: vert_block*2,),
          Container(
              width: width,
              height: vert_block*8,
              margin: EdgeInsets.only(left: horz_block*4),
              //color: Colors.red,
              child: Row(
                children: [
                  Container(
                    width: horz_block*17,
                    height: height,
                    decoration: BoxDecoration(
                    color: Mycolors.boxfill1,
                    borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: vert_block*2,),
                      Text('  Australian Cherry',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'SF semibold',
              fontSize: vert_block*1.6,
              color: Mycolors.fruitnamecolor
            ),),
            Expanded(child: SizedBox()),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('  price per item',textAlign:TextAlign.center,style: TextStyle(
                  //fontFamily: 'SF semibold',
                  fontSize: vert_block*1.4,
                  color: Mycolors.graytext
            ),),
            SizedBox(width: horz_block*40,),
            Text('\$20.78',textAlign:TextAlign.center,style: TextStyle(
                  //fontFamily: 'SF semibold',
                  fontSize: vert_block*1.4,
                  color: Mycolors.green
            ),),
            
               ],
             ),
                     SizedBox(height: vert_block,),

                    ],
                  )
                ],
              ),
            ),
                     SizedBox(height: vert_block*2,),

              Container(
            width: width,
            height: 1,
            color: Mycolors.border,
            margin: EdgeInsets.symmetric(horizontal: horz_block*4),
          ),
          Expanded(child: SizedBox()),

           Padding(
            padding:  EdgeInsets.symmetric(horizontal: horz_block*4,vertical: horz_block*4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                 Text('Amount',textAlign:TextAlign.center,style: TextStyle(
         // fontFamily: 'SF semibold',
        // fontWeight: FontWeight.w600,
            fontSize: vert_block*1.7,
            color: Colors.black
        ),),

        Text('\$11.2',textAlign:TextAlign.center,style: TextStyle(
          fontFamily: 'SF semibold',
        // fontWeight: FontWeight.w600,
            fontSize: vert_block*1.7,
            color: Colors.black
        ),),
               
              ],
            ),
          ),

           Padding(
            padding:  EdgeInsets.symmetric(horizontal: horz_block*4,vertical: horz_block*4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                 Text('Total Price',textAlign:TextAlign.center,style: TextStyle(
         // fontFamily: 'SF semibold',
        // fontWeight: FontWeight.w600,
            fontSize: vert_block*1.7,
            color: Colors.black
        ),),

        Text('\$11.2',textAlign:TextAlign.center,style: TextStyle(
          fontFamily: 'SF bold',
        // fontWeight: FontWeight.w600,
            fontSize: vert_block*2,
            color: Mycolors.green
        ),),
               
              ],
            ),
          ),

          
              Container(
            width: width,
            height: 1,
            color: Mycolors.border,
            margin: EdgeInsets.symmetric(horizontal: horz_block*4),
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: horz_block*4,vertical: horz_block*4),

            child: Row(
              children: [
                Container(
                width: horz_block*7,
                height: horz_block*7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Mycolors.border
                  )
                ),
                child: Center(
                  child: Icon(Icons.remove,color: Colors.black.withOpacity(0.6),size: 16,),
                ),
              ),
              SizedBox(width: horz_block*5,),

               Text('1',textAlign:TextAlign.center,style: TextStyle(
                    //fontFamily: 'SF semibold',
                    fontSize: vert_block*1.4,
                    color: Mycolors.fruitnamecolor
              ),),
              SizedBox(width: horz_block*5,),

              Container(
                width: horz_block*7,
                height: horz_block*7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Mycolors.green.withOpacity(0.5)
                  )
                ),
                child: Center(
                  child: Icon(Icons.add,color: Mycolors.green,size: 16,),
                ),
              ),
            Expanded(child: SizedBox()),
              InkWell(
        onTap: () async {
                // Navigator.push(context, TransparentRoute(builder: (context)=>Addtocart()));
              //  savedata();
                
              //  Navigator.pop(context);

        },
        child: Container(
            //margin: EdgeInsets.symmetric(horizontal: horz_block*8),
            width: width/3,
            height: vert_block*5,
            decoration: BoxDecoration(
                color: Mycolors.green,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
                child: Text('Add to cart',textAlign:TextAlign.center,style: TextStyle(
            fontFamily: 'SF semibold',
            fontSize: vert_block*1.6,
            color: Colors.white
        ),),
            ),
        ),
      ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}