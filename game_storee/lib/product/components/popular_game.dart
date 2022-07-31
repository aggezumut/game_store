import 'package:flutter/material.dart';
import 'package:game_store/product/products/popular_game_products.dart';
import 'package:game_store/product/widgets/app_text.dart';
import 'package:game_store/view/detail_screen.dart';

class PopularGame extends StatelessWidget {
  const PopularGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText.midleTitle(
            text: "Popular Game",
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gameDetail.length,
              itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        gameDetail: gameDetail[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(0.4)),
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(gameDetail[index].image),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
