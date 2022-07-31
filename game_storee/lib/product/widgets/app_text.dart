import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText.normal(
      {Key? key,
       this.size = 16,
       this.color = Colors.black,
       this.fontWeight = FontWeight.normal,
      required this.text})
      : super(key: key);
  const AppText.title(
      {Key? key,
       this.size= 25,
       this.color= Colors.white,
       this.fontWeight= FontWeight.bold,
      required this.text})
      : super(key: key);
  const AppText.subtitle(
      {Key? key,
       this.size = 14,
       this.color = Colors.grey,
       this.fontWeight = FontWeight.normal,
      required this.text})
      : super(key: key);

  const AppText.midleTitle(
      {Key? key,
        this.size = 16,
        this.color = Colors.black,
        this.fontWeight = FontWeight.bold,
        required this.text})
      : super(key: key);

  final double size;
  final Color color;
  final FontWeight fontWeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontSize: size,
      ),
    );
  }
}
