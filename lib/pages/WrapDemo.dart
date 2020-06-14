import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => WrapState();

}

class WrapState extends State<WrapDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WrapDemo"),
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.yellow, margin: EdgeInsets.all(10.0),),
                Container(width: 50, height: 50, color: Colors.yellow, margin: EdgeInsets.all(10.0),),
                Container(width: 50, height: 50, color: Colors.yellow, margin: EdgeInsets.all(10.0),),
                Container(width: 50, height: 50, color: Colors.yellow, margin: EdgeInsets.all(10.0),),
                Container(width: 50, height: 50, color: Colors.yellow, margin: EdgeInsets.all(10.0),),
                Container(width: 50, height: 50, color: Colors.yellow, margin: EdgeInsets.all(10.0),)
              ],
            ),
            Wrap(
              direction: Axis.vertical,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 100,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreen
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreen
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreen
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreen
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreen
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }

}