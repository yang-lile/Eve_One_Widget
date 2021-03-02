/// 默认居左上角，可以使用alinment属性，自定义对齐方式

import 'package:eve_one_widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "StackDemo",
      body: Center(
        child: Stack(
          // 默认是Overflow.clip（超出的剪切掉），改为超出的也显示
          // overflow: Overflow.visible,
          // update on flutter ^1.26.0
          // TODO: debug
          clipBehavior : Clip.antiAlias,
          children: <Widget>[
            Container(
              color: Colors.red[300],
              width: 300.0,
              height: 300.0,
            ),
            Container(
              color: Colors.yellow[300],
              width: 250.0,
              height: 250.0,
            ),
            Container(
              color: Colors.blue[300],
              width: 200.0,
              height: 200.0,
            ),
            Container(
              color: Colors.green[300],
              width: 150.0,
              height: 150.0,
            ),
            Positioned(
              bottom: -50,
              right: -50,
              child: Container(
                color: Colors.blueGrey[300],
                width: 100.0,
                height: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
