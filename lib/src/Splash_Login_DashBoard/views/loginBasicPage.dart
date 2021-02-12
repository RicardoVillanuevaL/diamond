import 'package:diamond_services/src/contants/images.dart';
import 'package:diamond_services/src/contants/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//CONSTANTS

class LoginBasicPage extends StatefulWidget {
  LoginBasicPage({Key key}) : super(key: key);

  @override
  _LoginBasicPageState createState() => _LoginBasicPageState();
}

class _LoginBasicPageState extends State<LoginBasicPage> {
  TextEditingController controller;
  bool titleUser;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    titleUser = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(right: 0, child: Image.asset(logoLeft)),
        Positioned(
          left: 10,
          top: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Registresé', style: styleTextTitleLogin2),
              Container(
                width: 200,
              )
            ],
          ),
        )
      ]),
    );
  }
}
