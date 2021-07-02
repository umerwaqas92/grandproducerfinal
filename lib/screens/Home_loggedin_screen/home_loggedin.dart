import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Cart_screen/cart_screen.dart';
import 'package:grocery/screens/Favourites_screen/Favourites_screen.dart';
import 'package:grocery/screens/Home_loggedin_screen/pages/home_page_loggedin.dart';
import 'package:grocery/screens/Search_sscreen/Search_screen.dart';
import 'package:grocery/screens/profile_screen/profile.dart';



class Homeloggedin extends StatefulWidget {
  @override
  _HomeloggedinState createState() => _HomeloggedinState();
}

class _HomeloggedinState extends State<Homeloggedin> {
  int _currentIndex = 0;
  String name='';
  bool check=false;
  final List<Widget> _children = [
    homepagelogin(),
    Search(),
    Cartscreen(),
    Favourites(),
    Profile()
  ];
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
     print(_currentIndex);
      if(_currentIndex==0){
       setState(() {
                name='';
                check=false;
              });
     }
     if(_currentIndex==1){
       setState(() {
                name='Search';
                check=true;
              });
      
     }
     if(_currentIndex==2){
       setState(() {
                name='Cart';
                check=true;
              });
      
     }
     if(_currentIndex==3){
       setState(() {
                name='Favourites';
                check=true;
              });
      
     }
      if(_currentIndex==4){
       setState(() {
                name='';
                check=true;
              });
      
     }
   });
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: (
          Text('$name',style: TextStyle(
             fontFamily: 'SF bold',
            fontSize: vert_block*2.5,
            color: Colors.black
          ),)
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: check?Container(): Icon(Customicon.search,color: Colors.black,),
          )
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
       currentIndex: _currentIndex, // this will be set when a new tab is tapped
       onTap: onTabTapped,
       type: BottomNavigationBarType.fixed,
       showUnselectedLabels: true,
       unselectedItemColor: Colors.black,
       selectedItemColor: Mycolors.green,
       unselectedLabelStyle: TextStyle(
         color: Colors.black,
         fontSize: vert_block*1.3
       ),
       selectedLabelStyle: TextStyle(
         color: Colors.green,
         fontSize: vert_block*1.3

       ),
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Customicon.home),
           label:'Home',
         ),
         BottomNavigationBarItem(
           icon: new Icon(Customicon.search),
           label:'Search',
         ),
         BottomNavigationBarItem(
           icon: Icon(Customicon.cart),
           label:'Cart',
         ),
         BottomNavigationBarItem(
           icon: Icon(Customicon.heart),
           label:'Favourites',
         ),
         BottomNavigationBarItem(
           icon: Icon(Customicon.profile),
           label:'Profile',
         )
       ],
     ),
      body: _children[_currentIndex]
      
    );
  }
}