import 'package:flutter/material.dart';

class FutureBuilderDemo extends StatefulWidget {
  @override
  _FutureBuilderDemoState createState() => _FutureBuilderDemoState();
}

class _FutureBuilderDemoState extends State<FutureBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FutureBuilderDemo")),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          child: _myData(),
        ),
      ),
    );
  }

  _myData() {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3), () => 999999),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Text("一刀${snapshot.data}");
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              Text("在加载了在加载了..."),
            ],
          );
        }
      },
    );
  }
}
