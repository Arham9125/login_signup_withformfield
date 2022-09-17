import 'dart:async';


import 'package:firebaseproj/screens/login_page.dart';
import 'package:flutter/material.dart';
class SplashServices{


  void isLogin(BuildContext context){

    Timer(Duration(seconds: 2), ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())));
  }
}