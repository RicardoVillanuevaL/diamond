import 'package:flutter/material.dart';

//contants
import 'package:diamond_services/src/contants/images.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Image.asset(logoLeft), top: 0, right: 0),
          Positioned(
            left: 0,
            top: 30,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Registro'),
                SizedBox(height: 30),
                Text('Nombre de Usuario'),
                TextField(),
                SizedBox(height: 10),
                Text('Correo'),
                TextField(),
                SizedBox(height: 10),
                Text('Password'),
                TextField(),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 40,
              right: 40,
              child: TextButton(
                  child: Text('Ya tengo una cuenta'), onPressed: () {}))
        ],
      ),
    );
  }
}
