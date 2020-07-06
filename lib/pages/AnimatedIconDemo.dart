import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class AnimatedIconDemo extends StatefulWidget {
  @override
  _AnimatedIconDemoState createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward()
      ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "AnimatedIconDemo",
      body: Center(
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: controller,
        ),
      ),
    );
  }
}
