import 'dart:ui';

import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class BackdropFilterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        appBarTitle: "BackdropFilter",
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset("assets/images/backdrop_filter.webp"),
              ClipRRect(
                child: Container(
                  width: 60.0,
                  height: 30.0,
                  alignment: Alignment.center,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Text(
                      "我糊了",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
