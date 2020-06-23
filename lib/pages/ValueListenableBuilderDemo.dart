/// 居然是一个不需要重绘ui就可以更新数据的控件
/// 奇怪的性能提升了！！！

import 'dart:math';

import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class ValueListenableBuilderDemo extends StatelessWidget {
  final ValueNotifier _valueNotifier = ValueNotifier<int>(0);
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "ValueListenableBuilderDemo",
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _valueNotifier,
          builder: (BuildContext context, dynamic value, Widget child) {
            return Table(
              children: [
                TableRow(
                  children: [
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                  ],
                ),
                TableRow(
                  children: [
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                  ],
                ),
                TableRow(
                  children: [
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return _valueNotifier.value = _random.nextInt(3000);
        },
      ),
    );
  }
}
