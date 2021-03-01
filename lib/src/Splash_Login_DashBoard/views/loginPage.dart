import 'package:diamond_services/src/Pokemon/views/DashBoardPokemon.dart';
import 'package:diamond_services/src/Splash_Login_DashBoard/services/funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//WIDGETS
import 'package:diamond_services/src/Splash_Login_DashBoard/widgets/buttonborderWidget.dart';

//ROUTES

//CONTANTS
import 'package:diamond_services/src/contants/images.dart';
import 'package:diamond_services/src/contants/style.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FuntionsLogin funtionsLogin;
  @override
  void initState() {
    super.initState();
    funtionsLogin = FuntionsLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(tag: 'logo', child: Image.asset(logo2, height: 150)),
            Image.asset(titulo6, width: 150),
            SizedBox(height: 40),
            Text('Registresé', style: styleTextTitleLogin2),
            Text('Es más fácil registrarse ahora'),
            SizedBox(height: 40),
            ButtonTransparentBorder('Conectece con Google', logoGoogle, () {}),
            SizedBox(height: 10),
            ButtonTransparentBorder(
                'Conectece con Facebook', logoFacebook2, () {}),
            SizedBox(height: 10),
            ButtonTransparentBorder(
                'Conectece con Twitter', logoTwitter, () {}),
            SizedBox(height: 10),
            ButtonTransparentBorder('Registresé con su correo', '', () {
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (BuildContext context) => DashBoardPokemon()));
            }),
            SizedBox(height: 30),
            RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    children: <TextSpan>[
                  TextSpan(text: 'Ya tienes una cuenta '),
                  TextSpan(
                      text: 'logueate!',
                      recognizer: TapGestureRecognizer()
                        ..onTap = funtionsLogin.goToSingInBasic,
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline))
                ]))
          ],
        ),
      ),
    ));
  }
}
