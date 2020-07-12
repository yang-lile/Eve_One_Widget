import 'dart:math';

import 'package:flutter/material.dart';

class RandomTools {
  static Color randomColors() {
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
