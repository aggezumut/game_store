import 'package:flutter/material.dart';
import 'package:game_store/product/theme/app_color.dart';
import 'package:game_store/product/widgets/app_padding.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search game, ...',
          hintStyle: TextStyle(
            color: Colors.grey.withOpacity(0.7),
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: kPrimaryColor,
            size: 25,
          ),
          suffixIcon: const Icon(Icons.mic,color: kPrimaryColor,size: 25,),
          filled: true,
          fillColor: kSecondColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
