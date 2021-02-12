import 'package:diamond_services/src/Splash_Login_DashBoard/views/loginBasicPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FuntionsLogin {
  BuildContext context;

  FuntionsLogin(this.context);

  void singInGoogle() {}
  void singInFacebook() {}
  void singInTwitter() {}
  void goToSingInBasic() {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (context) => LoginBasicPage()));
  }

  void singInBasic() {}
  void singUpBasic() {}
}
