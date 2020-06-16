/// 主要用于专场动画，
/// 你可以直接复制粘贴FadeTransionDemoModel来修改属于你的转场动画

import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class FadeTransitionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "FadeTransitionDemo",
      body: Align(
        alignment: Alignment.center,
        child: FadeTransitionDemoModel(
          child: Container(
            color: Colors.yellow[500],
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}

class FadeTransitionDemoModel extends StatefulWidget {
  final Widget child;

  FadeTransitionDemoModel({@required this.child});

  @override
  _FadeTransitionDemoModelState createState() =>
      _FadeTransitionDemoModelState();
}

class _FadeTransitionDemoModelState extends State<FadeTransitionDemoModel>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _controller,
      child: widget.child,
    );
  }
}
