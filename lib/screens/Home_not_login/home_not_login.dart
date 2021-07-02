import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/customicon_icons.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/Home_not_login/pages/home_page.dart';

class homenotlogin extends StatefulWidget {
  @override
  _homenotloginState createState() => _homenotloginState();
}

class _homenotloginState extends State<homenotlogin> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    homepage(),
    Container(
      color: Colors.pink,
    ),
    
  ];
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
     print(_currentIndex);
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
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Customicon.search,color: Colors.black,),
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