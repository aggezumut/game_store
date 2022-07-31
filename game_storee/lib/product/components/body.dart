import 'package:flutter/material.dart';

import 'category.dart';
import 'newest_game.dart';
import 'popular_game.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.white.withOpacity(0.90),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(children: [
        GameCategory(),
        const SizedBox(height: 10 ,),
        const PopularGame(),
        const SizedBox(
          height: 15,
        ),
        const NewestGame(),
      ],),

    );
  }
}
