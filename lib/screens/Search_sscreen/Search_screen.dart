import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Home_loggedin_screen/Fruits_items/fruits.dart';
import 'package:grocery/screens/Item_detail_screen/item_detail.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: horz_block*5),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Mycolors.lightblue,
              height: vert_block*5,
              child: TextField(
                onTap: (){
                  showSearch(context: context, delegate: Searching());
                },
                style: TextStyle(
                  fontSize: vert_block*1.6
                ),
                decoration: new InputDecoration(
                  
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  
                    borderSide: BorderSide(color: Mycolors.green),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Mycolors.border,),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                
                hintStyle: TextStyle(
                  fontSize: vert_block*1.6,
                    color: Mycolors.graytext
                ),
                hintText: 'Search',
                suffixIcon: Container(
                  margin: EdgeInsets.all(6),
                                   width: horz_block*8,
                                  height: horz_block*8,
                                  decoration: BoxDecoration(
                                    color: Mycolors.green,
                                    borderRadius: BorderRadius.circular(10),
                                    
                                  ),
                                  child: Center(
                                    child: Icon(Customicon.search,color: Colors.white),
                                  ),
                                ),
                              
          ),
              ),
            ),
            SizedBox(height: vert_block*2,),
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
                          itemCount: 8,
                        
                        ),
                      ),
                    ),
            
            ],
          ),
        ),
      ),
      
    );
  }
}


class Searching extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
   
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context,i){
      return ListTile(
        title: Text('data'),
      );
    });
  }
  
}