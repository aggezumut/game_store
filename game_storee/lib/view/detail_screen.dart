import 'package:flutter/material.dart';
import 'package:game_store/product/products/popular_game_products.dart';
import 'package:game_store/product/theme/app_color.dart';
import 'package:game_store/product/widgets/app_padding.dart';
import 'package:game_store/product/widgets/stars.dart';
import 'package:readmore/readmore.dart';

import '../product/widgets/app_text.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.gameDetail}) : super(key: key);

  final Game gameDetail;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: kPrimaryColor,
            pinned: true, // üste sürüklenince üst kısımda bir kısım bırakıyor
            expandedHeight: 270,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                gameDetail.image,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: size.width,
                  height: 25,
                  alignment: Alignment.center,
                  child: Container(
                    height: 5,
                    width: 60,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 100,
                  width: size.width,
                  child: Row(
                    children: [
                      Image.asset(
                        gameDetail.icon,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText.midleTitle(text: gameDetail.name),
                          const SizedBox(
                            height: 8,
                          ),
                          AppText.subtitle(text: gameDetail.type),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  AppText.subtitle(
                                    text: gameDetail.score.toString(),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.download,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  AppText.subtitle(
                                    text: "${gameDetail.download.toString()} k",
                                    color: Colors.black,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(gameDetail.imgs[index]),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                 AppPadding(
                  child: ReadMoreText(
                    gameDetail.description,
                    trimLines: 3,
                    style: const TextStyle(color: Colors.grey),
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: " Show less",
                    lessStyle: const TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    moreStyle: const TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                AppPadding(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppText.midleTitle(text: "Ratings and Review"),
                      AppText.subtitle(text: "view"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppPadding(
                  child: Row(
                    children: [
                      Text(
                        gameDetail.score.toString(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stars(size: 25),
                          const SizedBox(
                            height: 3,
                          ),
                          AppText.subtitle(
                            text: "${gameDetail.review.toString()} review",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                AppPadding(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Install"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
