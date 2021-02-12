import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//ROUTES
import 'package:diamond_services/src/Splash_Login_DashBoard/views/loginPage.dart';

//CONSTANTS
import 'package:diamond_services/src/contants/images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  //CORREGIR CORRECTAMENTE EN EL BACK
  void loader(BuildContext context) {
    Future.delayed(Duration(milliseconds: 2500), () {
      Navigator.pushAndRemoveUntil(context,
          CupertinoPageRoute(builder: (context) => LoginPage()), (_) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    loader(context);
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'logo',
          child: Image.asset(logo2, height: 80)),
      ),
    );
  }
}
