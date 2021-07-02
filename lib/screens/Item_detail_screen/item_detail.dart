import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Home_loggedin_screen/Fruits_items/fruits.dart';
import 'package:grocery/screens/Item_detail_screen/add_to_cart/add_to_cart.dart';
import 'package:grocery/screens/Item_detail_screen/reviews/review.dart';
import 'package:grocery/screens/Item_detail_screen/track_meal/track_meal.dart';
import 'package:grocery/screens/Item_detail_screen/wriet_a_review/dialogue.dart';
import 'package:grocery/screens/Reviews_screen/Review_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


class Itemdetails extends StatefulWidget {
  @override
  _ItemdetailsState createState() => _ItemdetailsState();
}

class _ItemdetailsState extends State<Itemdetails> with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController=PageController(initialPage: 0,keepPage: true);
  int pageno=0;
  bool check=false;
   //Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
   bool boolValue=false;

  getdata() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
   boolValue = prefs.getBool('boolValue');
   //return boolValue;


  }
   @override
  void initState() {
    getdata();
    super.initState();
    //print('asnajnasasassasaas');
    
    
    _tabController = new TabController(vsync: this, length: 2);
  }
    @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mycolors.boxfill1,
        elevation: 0,
      ),
      body: Container(
        width: width,
        height: height,
        //color: Colors.red,
        child: Stack(
          children: [
            Container(
              width: width,
              height: vert_block*20,
              color: Mycolors.boxfill1,
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    children: [
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                   Positioned(
                     left: width/2.6,
                     bottom: vert_block*7,
                     child: SmoothPageIndicator(
                       
	controller: _pageController,  // PageController
	count:  6,
	effect:  ExpandingDotsEffect(
    spacing: 8,
    activeDotColor: Colors.white,
    dotColor: Mycolors.boxfill,
    dotHeight: 5,
    dotWidth: 5
  ),  // your preferred effect
	onDotClicked: (index){
	    
	}
),
                   ),
                ],
              )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: vert_block*78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  color: Colors.white,

                ),
                child: Stack(
                  children: [
                    Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),

                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                             Text('Australian Cherry',textAlign:TextAlign.center,style: TextStyle(
                                        fontFamily: 'SF semibold',
                                      fontSize: vert_block*1.8,
                                      color: Mycolors.fruitnamecolor
                                    ),),
                                    SizedBox(height: vert_block),
                            Row(
                              children: [
                                Text('\$5.56',textAlign:TextAlign.center,style: TextStyle(
                                                fontFamily: 'SF semibold',
                                              fontSize: vert_block*1.6,
                                              color: Mycolors.green
                                            ),),
                                            SizedBox(
                                              width: horz_block*2,
                                            ),
                                Container(
                                  width: horz_block*15,
                                  height: vert_block*1.2,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (_,i){
                                    return Icon(Icons.star,size: 11,color: Colors.yellow,);
                                  }),
                                ),
                                Expanded(child: SizedBox()),
                                InkWell(
                                  onTap: (){
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
                                    width: horz_block*18,
                                    height: vert_block*3,
                                    decoration: BoxDecoration(
                                      color: Mycolors.green,
                                      borderRadius: BorderRadius.circular(6)
                                    ),
                                    child: Center(
                                      child:  Text('Write a Review',textAlign:TextAlign.center,style: TextStyle(
                                                  fontFamily: 'SF semibold',
                                                fontSize: vert_block*1,
                                                color: Colors.white
                                              ),),
                                    ),
                                  ),
                                )
                              ],
                            ),

                            SizedBox(
                              height: vert_block*2,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset('assets/quality.png'),
                                      Text('  Quality',textAlign:TextAlign.center,style: TextStyle(
                                                
                                              fontSize: vert_block*1.7,
                                              color: Mycolors.fruitnamecolor
                                            ),),

                                    ],
                                  ),
                                ),
                                SizedBox(width: horz_block*5,),
                                 Container(
                                  child: Row(
                                    children: [
                                      Image.asset('assets/fresh.png'),
                                      Text('  Fresh',textAlign:TextAlign.center,style: TextStyle(
                                                
                                              fontSize: vert_block*1.7,
                                              color: Mycolors.fruitnamecolor
                                            ),),

                                    ],
                                  ),
                                )
                              ],
                            ),

                            SizedBox(
                              height: vert_block*2,
                            ),

                            InkWell(
            onTap: (){
               showMaterialModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ),
                  expand: false,
  context: context,
  builder: (context) => Addtocart(),
);
                       //  Navigator.push(context, TransparentRoute(builder: (context)=>Addtocart()));

            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: horz_block*8),
              width: width,
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
          SizedBox(height: vert_block*2,),

          Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                        child: Container(
                          width: horz_block*60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                         border: Border(
                              bottom: BorderSide(color: Mycolors.border, width: 2.0),
                            ),
            ),
                        ),
              ),
              TabBar(
              onTap: (index){
                         setState(() {
                                          pageno=index;
                                        if(pageno==0){
                                          setState(() {
                                              check=false;
                                                                          });
                                        }else{
                                          setState(() {
                                              check=true;
                                                                          });
                                        }
                                        });
              },
              
              controller: _tabController,
              indicatorColor: Mycolors.green,
                            indicatorSize: TabBarIndicatorSize.tab,
                            //indicatorPadding: EdgeInsets.all(3),
                            unselectedLabelStyle: TextStyle(
                              color: Mycolors.green.withOpacity(0.6),
                               fontFamily: 'SF semibold',
            fontSize: vert_block*1.7,
                            ),
                            isScrollable: true,
                          unselectedLabelColor:  Mycolors.green.withOpacity(0.6),
                          labelColor: Mycolors.green,
                          labelStyle: TextStyle(
                               fontFamily: 'SF semibold',
            fontSize: vert_block*1.7,
                            ),
              tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Product Detail'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Reviews'),
                        )

            ]),
            ],
            
            
          ),
          SizedBox(height: vert_block*2,),

          //Tabview

          Container(
            width: width,
            height:check?vert_block*40: vert_block*8,
            color: Colors.white,
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
              Container(
                      width: width,
                      height: height,
                      child: Text('Everybody enjoys indulging in juicy red cherries during the summer season. This vibrant red fruit is a great blend of sweet flavours with a tingle of sourness and adds the...',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign:TextAlign.center,style: TextStyle(
            
            fontSize: vert_block*1.6,
            color: Mycolors.graytext
          ),),
              ),

              Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: width,
                      height: height,
                      child: Column(
                        children: [
                          Review_item(),
                          SizedBox(height: vert_block*2,),
                          Review_item(),
          Expanded(child: SizedBox()),

                          InkWell(
            onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewsScreen()));

            },
            child: Container(
             // margin: EdgeInsets.symmetric(horizontal: horz_block*8),
              width: width,
              height: vert_block*6,
              decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Mycolors.green),
                        borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                        child: Text('See All Reviews',textAlign:TextAlign.center,style: TextStyle(
              fontFamily: 'SF semibold',
              fontSize: vert_block*1.6,
              color: Mycolors.green
            ),),
              ),
            ),
          ),
          Expanded(child: SizedBox()),

          Container(
            width: width,
            height: 2,
            color: Mycolors.border,
          )
                        ],
                      ),
              ),

            ]),
          ),

          SizedBox(height: vert_block*2,),

          Text('Similar Products',textAlign:TextAlign.center,style: TextStyle(
            fontFamily: 'aer',
            fontSize: vert_block*2.2,
            color: Mycolors.bluetext
          ),),
          SizedBox(height: vert_block*2,),

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
            )
                            
                          ],
                        ),
                      ),
                    ),

                   
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                width: width,
                height: vert_block*12,
                padding: EdgeInsets.symmetric(horizontal: horz_block*6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(horz_block*7),topRight: Radius.circular(horz_block*7)),
                  color: Colors.white,
                   boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3, 2), // changes position of shadow
                                ),
                              ],
                ),
                child: Center(
                  child: InkWell(
              onTap: (){
                showMaterialModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ),
                  expand: false,
  context: context,
  builder: (context) => Trackmeal(),
);
               //Navigator.push(context, TransparentRoute(builder: (context)=>Trackmeal()));
              },
              child: Container(
                  width: width,
                  height: vert_block*6,
                  padding: EdgeInsets.symmetric(horizontal: horz_block*4),
                  decoration: BoxDecoration(
                    color: Mycolors.green,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Text('\$56.68',textAlign:TextAlign.center,style: TextStyle(
                  fontFamily: 'SF semibold',
                 
                  fontSize: vert_block*1.6,
                  color: Colors.white
              ),),
              Expanded(child: SizedBox()),

              Text('Check Out',textAlign:TextAlign.center,style: TextStyle(
                  fontFamily: 'SF semibold',
                 
                  fontSize: vert_block*1.6,
                  color: Colors.white
              ),),
              SizedBox(
                width: horz_block*3,
              ),

              Icon(Icons.arrow_forward,color: Colors.white,),
              
                      ],
                    ),
                  ),
              ),
            ),
                ),
              ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}



