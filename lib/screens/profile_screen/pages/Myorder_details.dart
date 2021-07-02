import 'package:flutter/material.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/profile_screen/pages/widgets/order_details_widget.dart';

class Myorderdetails extends StatefulWidget {
  @override
  _MyorderdetailsState createState() => _MyorderdetailsState();
}

class _MyorderdetailsState extends State<Myorderdetails> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Container(
      width: width,
      height: height/2,
      padding: EdgeInsets.symmetric(horizontal: horz_block*4,vertical: horz_block*4),
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: ()=>Navigator.pop(context),
                child: Icon(Icons.close,color: Mycolors.graytext,))
            ],
          ),
          SizedBox(height: vert_block*2,),

          Orderitemdetails(),

          SizedBox(height: vert_block*1,),

          Orderitemdetails(),

          SizedBox(height: vert_block*1,),

          Orderitemdetails(),

          SizedBox(height: vert_block*1,),

          Orderitemdetails(),
        ],
      ),
    );
  }
}