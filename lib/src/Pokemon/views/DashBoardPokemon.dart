import 'package:animate_do/animate_do.dart';
import 'package:diamond_services/src/contants/images.dart';
import 'package:flutter/material.dart';

class DashBoardPokemon extends StatefulWidget {
  DashBoardPokemon({Key key}) : super(key: key);

  @override
  _DashBoardPokemonState createState() => _DashBoardPokemonState();
}

class _DashBoardPokemonState extends State<DashBoardPokemon> {
  bool preLoad;
  @override
  void initState() {
    preLoad = false;
    loadDashBoard();
    super.initState();
  }

  void loadDashBoard() async {
    await Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        preLoad = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: dashBoard()),
    );
  }

  Widget dashBoard() {
    if (preLoad) {
      return FadeInUp(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(logoPokemonClassic, width: 200),
            Text('Pokemon Clasic'),
            SizedBox(height: 100),
            Image.asset(logoPokemonGO, width: 200),
          ],
        ),
      );
    } else {
      return Image.asset(loadPokemon1);
    }
  }
}
