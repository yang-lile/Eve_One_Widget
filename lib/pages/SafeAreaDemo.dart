
import 'package:flutter/material.dart';

class SafeAreaDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => SafeAreaState();

}

class SafeAreaState extends State<SafeAreaDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SafeArea"),
      ),
      body: SafeArea(
        bottom: true,
        top: true,
        child: Scrollbar(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Text("The text is obscured !", style: TextStyle(fontSize: 20),),
              );
            }
          )
        )
      ),
    );
  }


}