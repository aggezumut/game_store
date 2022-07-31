import 'package:flutter/material.dart';
import 'package:game_store/product/theme/app_color.dart';
import 'package:game_store/view/home_screen.dart';

import '../product/widgets/app_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0.0, -0.3), // x,y
            child: Image.asset(
              "assets/images/bg_liquid.png",
              width: size.width,
              height: size.height * 0.5,
            ),
          ),
          Align(
            alignment: const Alignment(0.0, -0.6),
            child: Image.asset(
              "assets/images/phone-3d.png",
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.7),
            child: SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppText.title(text: title),
                  const AppText.subtitle(
                    text: subtitle,
                    color: kSecondColor,
                    size: 15 ,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[300]),
                      child: const AppText.normal(
                        text: "Get Started",
                        color: kSecondColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String title = "Adding Fun to your Life ";
const String subtitle = "We provide make more experience for playing game ";
