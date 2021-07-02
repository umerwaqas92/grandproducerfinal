import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:grocery/baseurl/baseurlg.dart';
import 'package:grocery/beanmodel/signinmodel.dart';

class ProfileProvider extends Cubit<int> {

  ProfileProvider() : super(0) {
    hitCounter();
  }

  void hitCounter() async {
    getProfileFromInternet();
  }

  void getProfileFromInternet() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var url = myProfileUri;
    Client().post(url, body: {
      'user_id': '${prefs.getInt('user_id')}'
    }).then((response) {
      print('Response Body: - ${response.body}');
      if (response.statusCode == 200) {
        print('Response Body: - ${response.body}');
        var jsonData = jsonDecode(response.body);
        SignInModel signInData = SignInModel.fromJson(jsonData);
        if(signInData.status == "1" || signInData.status==1){
          var userId = int.parse('${signInData.data.user_id}');
          prefs.setInt("user_id", userId);
          prefs.setString("user_name", '${signInData.data.user_name}');
          prefs.setString("user_email", '${signInData.data.user_email}');
          prefs.setString("user_image", '${signInData.data.user_image}');
          prefs.setString("user_phone", '${signInData.data.user_phone}');
          prefs.setString("user_password", '${signInData.data.user_password}');
          prefs.setString("wallet_credits", '${signInData.data.wallet}');
          prefs.setString("user_city", '${signInData.data.user_city}');
          prefs.setString("user_area", '${signInData.data.user_area}');
          prefs.setString("block", '${signInData.data.block}');
          prefs.setString("app_update", '${signInData.data.app_update}');
          prefs.setString("reg_date", '${signInData.data.reg_date}');
          prefs.setBool("phoneverifed", true);
          prefs.setBool("islogin", true);
          prefs.setString("refferal_code", '${signInData.data.referral_code}');
          prefs.setString("reward", '${signInData.data.rewards}');
        }
      }
    }).catchError((e) {
      print(e);
    });
  }
}
