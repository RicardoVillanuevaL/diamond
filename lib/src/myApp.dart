import 'package:diamond_services/src/Splash_Login_DashBoard/views/splashPage.dart';
import 'package:flutter/material.dart';
 
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: SplashPage()
    );
  }
}