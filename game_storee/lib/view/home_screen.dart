import 'package:flutter/material.dart';
import 'package:game_store/product/components/body.dart';
import 'package:game_store/product/components/category.dart';
import 'package:game_store/product/components/header.dart';
import 'package:game_store/product/components/newest_game.dart';
import 'package:game_store/product/components/popular_game.dart';
import '../product/components/search.dart';
import '../product/theme/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(20),
                  origin: const Offset(150, 50),
                  child: Image.asset(
                    "assets/images/bg_liquid.png",
                    width: 200,
                  ),
                ),
              ),
              Positioned(
                top: 120,
                right: -50,
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(20),
                  origin: const Offset(150, 50),
                  child: Image.asset(
                    "assets/images/bg_liquid.png",
                    width: 200,
                  ),
                ),
              ),
              Column(
                children: const [
                  Header(),
                  SizedBox(
                    height: 30,
                  ),
                  Search(),
                  SizedBox(
                    height: 20,
                  ),
                  Body(),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
