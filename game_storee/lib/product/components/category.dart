import 'package:flutter/material.dart';
import 'package:game_store/product/theme/app_color.dart';
import 'package:game_store/product/widgets/app_text.dart';

class GameCategory extends StatelessWidget {
  GameCategory({Key? key}) : super(key: key);

  final List gameCategory = [
    {
      'icon': Icons.track_changes_outlined,
      'color': Colors.purple,
      'title': 'Arcade',
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': Colors.pink,
      'title': 'Racing',
    },
    {
      'icon': Icons.casino_outlined,
      'color': Colors.blue,
      'title': 'Strategy',
    },
    {
      'icon': Icons.sports_esports,
      'color': Colors.red,
      'title': 'More',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: gameCategory.length,
        itemBuilder: (_, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 28,right: 28,top: 20,bottom: 7),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: gameCategory[index]['color'] as Color,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Icon(
                gameCategory[index]['icon'] as IconData,
                color: kSecondColor,
                size: 30,
              ),
            ),
            AppText.normal(text: gameCategory[index]['title'] as String,color: Colors.black.withOpacity(0.8),)

          ],
        ),
      ),
    );
  }
}
