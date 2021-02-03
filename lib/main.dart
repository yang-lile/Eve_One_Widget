import 'package:Eve_One_Widget/GlobalDatas.dart';
import 'package:Eve_One_Widget/Routes.dart';
import 'package:flutter/material.dart';

void main() {
  globalDatas = GlobalDatas();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter EveOneWidget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorLight: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      // showSemanticsDebugger: true, // 大可不必使用，万恶之源
    );
  }
}
