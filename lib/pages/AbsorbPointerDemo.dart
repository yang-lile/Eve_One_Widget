import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class AbsorbPointerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "AbsorbPointerDemo",
      body:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPage1(),
            VerticalDivider(),
            _buildPage2(),
          ],
        ),
      
    );
  }

  Widget _buildPage1() {
    return AbsorbPointer(
      absorbing: true,
      child: _buildButtons(),
    );
  }

  Widget _buildPage2() {
    return _buildButtons();
  }

  Widget _buildButtons() {
    return Builder(
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("Hello SnackBar")),
              ),
              child: Text("click!"),
            ),
            OutlineButton(
              onPressed: () => Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("Hello SnackBar")),
              ),
              child: Text("click!"),
            ),
            RaisedButton(
              onPressed: () => Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("Hello SnackBar")),
              ),
              child: Text("click!"),
            ),
          ],
        );
      },
    );
  }
}
