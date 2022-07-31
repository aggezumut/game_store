import 'package:flutter/material.dart';
import 'package:game_store/product/products/popular_game_products.dart';
import 'package:game_store/product/theme/app_color.dart';
import 'package:game_store/product/widgets/app_padding.dart';

import 'package:game_store/product/widgets/app_text.dart';
import 'package:game_store/product/widgets/stars.dart';

class NewestGame extends StatelessWidget {
  const NewestGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AppPadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText.midleTitle(text: "Newest Game"),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 420,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: gameDetail.length,
              itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 15),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        gameDetail[index].icon,
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 11,
                        ),
                        AppText.midleTitle(text: gameDetail[index].name),
                        const SizedBox(
                          height: 5,
                        ),


                        AppText.subtitle(text: gameDetail[index].type),



                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Stars(),
                            const SizedBox(
                              width: 70,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 25,
                              width: 70,
                              child: const Center(
                                  child: AppText.normal(
                                text: "Install",
                                color: Colors.white,
                              )),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
