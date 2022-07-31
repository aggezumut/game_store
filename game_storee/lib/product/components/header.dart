import 'package:flutter/material.dart';
import 'package:game_store/product/theme/app_color.dart';
import 'package:game_store/product/widgets/app_padding.dart';

import '../widgets/app_text.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      child: Container(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AppText.title(
                      text: "Welcome,",
                    ),
                    SizedBox(height: 5,),
                    AppText.subtitle(text: "What would you like to play?",color: kSecondColor,),
                  ],
                ),
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
