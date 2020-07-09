/// 相当于把Container的高宽属性提出来的一个控件，用于设置最大高宽

import 'dart:math';

import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class LimitedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "LimitedBoxDemo",
      body: ListView(
        children: <Widget>[
          for (var i = 0; i < 10; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LimitedBox(
                maxHeight: 100.0,
                maxWidth: 150.0,
                child: Container(
                  color: randomColors(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  randomColors() {
    List colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.cyan,
      Colors.blue,
      Colors.purple
    ];
    return colors[Random().nextInt(6)];
  }
}
