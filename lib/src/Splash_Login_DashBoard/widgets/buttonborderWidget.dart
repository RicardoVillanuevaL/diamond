import 'package:diamond_services/src/contants/colors.dart';
import 'package:diamond_services/src/contants/style.dart';
import 'package:flutter/material.dart';

class ButtonTransparentBorder extends StatelessWidget {
  final String title;
  final String imageStart;
  final Function function;

  const ButtonTransparentBorder(this.title, this.imageStart, this.function);

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          side: BorderSide(color: colorNegro, width: 0.8)),
      color: colorBlanco,
      icon: imageStart.isNotEmpty
          ? Image.asset(imageStart, height: 20)
          : SizedBox(height: 20),
      label: Flexible(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(title,
            style: styleTextButtonLogin, textAlign: TextAlign.center),
      )),
      onPressed: function,
    );
  }
}
