import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
   Stars({Key? key, this.size = 15}) : super(key: key);

   final double size;

  final List<Color> color = [
    Colors.amber,
    Colors.amber,
    Colors.amber,
    Colors.amber,
    Colors.grey.withOpacity(0.3),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: color
          .map((e) => Icon(
        Icons.star,
        size: size,
        color: e,
      ))
          .toList(),
    );
  }
}
