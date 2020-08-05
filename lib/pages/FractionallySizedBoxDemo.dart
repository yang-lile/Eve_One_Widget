import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "FractionallySizedBoxDemo",
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 0.7,
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text("占用宽的70%"),
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Text("距离上面的按钮10%的高"),
          ],
        ),
      ),
    );
  }
}
