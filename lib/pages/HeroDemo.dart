import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class HeroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "HeroDemo",
      body: Center(
        child: Hero(
          tag: "image17",
          child: Image.asset("assets/images/hero.webp"),
        ),
      ),
    );
  }
}
