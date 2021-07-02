import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grocery/beanmodel/appinfo.dart';
import 'package:grocery/helper/colors.dart';
import 'package:grocery/helper/screensize.dart';
import 'package:grocery/screens/FOrget_password_screen/forget_password.dart';
import 'package:grocery/screens/Signin_screen/pages/login.dart';
import 'package:grocery/screens/Signin_screen/pages/signup.dart';

import '../../language_cubit.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:grocery/Components/custom_button.dart';
import 'package:grocery/Components/entry_field.dart';
import 'package:grocery/Locale/locales.dart';
import 'package:grocery/Routes/routes.dart';
import 'package:grocery/Theme/colors.dart';
import 'package:grocery/baseurl/baseurlg.dart';
import 'package:grocery/beanmodel/appinfo.dart';
import 'package:grocery/beanmodel/signinmodel.dart';
import 'package:grocery/language_cubit.dart';
import 'package:grocery/main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int pageno=0;
  bool check=false;

  LanguageCubit _languageCubit;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static final FacebookLogin facebookSignIn = new FacebookLogin();
  GoogleSignIn _googleSignIn;
  bool showProgress = false;
  bool enteredFirst = false;
  int numberLimit = 10;
  var countryCodeController = TextEditingController();
  var phoneNumberController = TextEditingController();
  AppInfoModel appInfoModeld;
  int checkValue = -1;
  List<String> languages = [];
  String selectLanguage = '';
  var passwordController = TextEditingController();

  FirebaseMessaging messaging;
  dynamic token;

  int count = 0;

  String appNameA = '--';


  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);

    _languageCubit = BlocProvider.of<LanguageCubit>(context);
    hitAsyncInit();
    hitAppInfo();
    _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

  }

  void hitAsyncInit() async{
    try {
      await Firebase.initializeApp();
      messaging = FirebaseMessaging.instance;
      messaging.getToken().then((value) {
        token = value;
      });
    }catch(e){}
  }

  void hitAppInfo() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      showProgress = true;
    });
    var http = Client();
    http.post(appInfoUri,body: {
      'user_id':''
    }).then((value) {
      print(appInfoUri);
      print(value.request.url);
      print(value.body);
      print(value.statusCode);
      if (value.statusCode == 200) {
        AppInfoModel data1 = AppInfoModel.fromJson(jsonDecode(value.body));
        print('data - ${data1.toString()}');
        if (data1.status == "1" || data1.status == 1) {
          setState(() {
            appInfoModeld = data1;
            appNameA = '${appInfoModeld.appName}';
            countryCodeController.text = '${data1.countryCode}';
            numberLimit = int.parse('${data1.phoneNumberLength}');
            prefs.setString('app_currency', '${data1.currencySign}');
            prefs.setString('app_referaltext', '${data1.refertext}');
            prefs.setString('app_name', '${data1.appName}');
            prefs.setString('country_code', '${data1.countryCode}');
            prefs.setString('numberlimit', '$numberLimit');
            prefs.setInt('last_loc', int.parse('${data1.lastLoc}'));
            showProgress = false;
          });
        } else {
          setState(() {
            showProgress = false;
          });
        }
      } else {
        setState(() {
          showProgress = false;
        });
      }
    }).catchError((e) {
      setState(() {
        showProgress = false;
      });
      print(e);
    });
  }

  void _handleSignIn(BuildContext contextd) async {
    _googleSignIn.isSignedIn().then((value) async {
      print('${value}');

      if (value) {
        if (_googleSignIn.currentUser != null) {
          socialLogin('google', '${_googleSignIn.currentUser.email}', '',contextd,_googleSignIn.currentUser.displayName,'');
        } else {
          _googleSignIn.signOut().then((value) async {
            await _googleSignIn.signIn().then((value) {
              var email = value.email;
              var nameg = value.displayName;
              socialLogin('google', '$email', '',contextd,nameg,'');
              // print('${email} - ${value.id}');
            }).catchError((e) {
              setState(() {
                showProgress = false;
              });
            });
          }).catchError((e) {
            setState(() {
              showProgress = false;
            });
          });
        }
      } else {
        try {
          await _googleSignIn.signIn().then((value) {
            var email = value.email;
            var nameg = value.displayName;
            socialLogin('google', '$email', '',contextd,nameg,'');
            // print('${email} - ${value.id}');
          });
        } catch (error) {
          setState(() {
            showProgress = false;
          });
          print(error);
        }
      }
    }).catchError((e) {
      setState(() {
        showProgress = false;
      });
    });
  }

  void socialLogin(dynamic loginType, dynamic email, dynamic fb_id, BuildContext contextd, dynamic userNameFb, dynamic fbmailid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (token != null) {
      var client = Client();
      client.post(socialLoginUri, body: {
        'type': '$loginType',
        'user_email': '$email',
        'email_id': '$fbmailid',
        'facebook_id': '$fb_id',
        'device_id': '$token',
      }).then((value) {
        print('${value.statusCode} - ${value.body}');
        var jsData = jsonDecode(value.body);
        SignInModel signInData = SignInModel.fromJson(jsData);
        if ('${signInData.status}' == '1') {
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
          Navigator.pushNamedAndRemoveUntil(context, PageRoutes.homePage, (route) => false);
        } else {
          if (loginType == 'google') {
            Navigator.pushNamed(contextd, PageRoutes.signUp, arguments: {
              'user_email': '${email}',
              'u_name': '${userNameFb}',
              'numberlimit': numberLimit,
              'appinfo': appInfoModeld,
            });
          } else {
            Navigator.pushNamed(contextd, PageRoutes.signUp, arguments: {
              'fb_id': '${fb_id}',
              'user_email': '${fbmailid}',
              'u_name': '${userNameFb}',
              'numberlimit': numberLimit,
              'appinfo': appInfoModeld,
            });
          }
        }
        setState(() {
          showProgress = false;
        });
      }).catchError((e) {
        setState(() {
          showProgress = false;
        });
        print(e);
      });
    } else {
      if (count == 0) {
        setState(() {
          count = 1;
        });
        messaging.getToken().then((value) {
          setState(() {
            token = value;
            socialLogin(loginType,email,fb_id,contextd,userNameFb,fbmailid);
          });
        }).catchError((e){
          setState(() {
            showProgress = false;
          });
        });
      } else {
        setState(() {
          showProgress = false;
        });
      }
    }
  }


  void hitgraphResponse(FacebookAccessToken accessToken, BuildContext contextt) async{
    var http = Client();
    http.get(
        Uri.parse('https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${accessToken.token}')
    ).then((graphResponse){
      final profile = jsonDecode(graphResponse.body);
      print(profile);
      print(profile['first_name']);
      print(profile['last_name']);
      print(profile['email']);
      print(profile['id']);
      socialLogin('facebook','','${profile['id']}',contextt,profile['name'],(profile['email']!=null && profile['email'].toString().length>0 && '${profile['email']}'.toUpperCase()!='NULL')?profile['email']:'');
    }).catchError((e){
      print(e);
      setState(() {
        showProgress = false;
      });
    });

  }

  void _login(BuildContext contextt) async {
    await facebookSignIn.logIn(['email']).then((result) {
      print(result);
      switch (result.status) {
        case FacebookLoginStatus.loggedIn:
          final FacebookAccessToken accessToken = result.accessToken;
          hitgraphResponse(accessToken,contextt);
          break;
        case FacebookLoginStatus.cancelledByUser:
          setState(() {
            showProgress = false;
          });
          break;
        case FacebookLoginStatus.error:
          setState(() {
            showProgress = false;
          });
          break;
      }
    }).catchError((e) {
      setState(() {
        showProgress = false;
      });
      print(e);
    });
  }

    @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  bool password=false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
            child: SizedBox(
             
            ),
          ),
             Text(check?'Sign Up':'Welcome',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'SF bold',
            fontSize: vert_block*3.4,
            color: Colors.black
          ),),

          SizedBox(height: vert_block*1,),
            Text(check?"Please type your information below":'Sign in to continue',textAlign:TextAlign.center,style: TextStyle(
            
            fontSize: vert_block*1.6,
            color: Mycolors.graytext
          ),),
          SizedBox(height: vert_block*2,),

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
                child: Text('Login'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Signup'),
              )

          ]),
          SizedBox(height: vert_block*3,),

         Container(
           width: width,
           height: vert_block*70,
           color: Colors.white,
           child: TabBarView(
             physics: NeverScrollableScrollPhysics(),
             controller: _tabController,
             children: [
             login(),
             Signup(),
           ]),
         ),
          SizedBox(
           
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You don't have an account?",textAlign:TextAlign.center,style: TextStyle(
            
            fontSize: vert_block*1.6,
            color: Mycolors.graytext
          ),),
          InkWell(
            onTap: (){
              _tabController.animateTo(1);
              setState(() {
                              check=true;
                            });
            },
            child: Text("  Sign Up",textAlign:TextAlign.center,style: TextStyle(
              
              fontSize: vert_block*1.6,
              color: Mycolors.green
            ),),
          ),
            ],
          ),
          SizedBox(height: vert_block*4,)
          ],
        ),
        
        
      ),
    );
  }
}