import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class AnimatedPaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "AnimatedPaddingDemo",
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.green[600],
            ),
          ),
          child: _JumpHeart(),
        ),
      ),
    );
  }
}

class _JumpHeart extends StatefulWidget {
  @override
  __JumpHeartState createState() => __JumpHeartState();
}

class __JumpHeartState extends State<_JumpHeart> {
  bool _padding;

  @override
  void initState() {
    super.initState();
    _padding = true;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      padding: EdgeInsets.all(_padding ? 20 : 50),
      duration: Duration(seconds: 1),
      curve: Curves.elasticOut,
      child: Material(
        color: Colors.green[400],
        child: InkWell(
          onTap: () => setState(() => _padding = !_padding),
          child: Container(),
        ),
      ),
    );
  }
}
