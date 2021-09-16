import 'package:bhu_blog/pages/home.dart';
import 'package:bhu_blog/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:bhu_blog/pages/loading.dart';
import 'package:bhu_blog/pages/home.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
     routes: {
      '/' : (context) => Loading(),
       '/home' : (context) => Home(),
       '/login' : (context) => Login()

     },
  ));
}


