import 'package:Eve_One_Widget/main.dart';
import 'package:Eve_One_Widget/pages/AboutDialogDemo.dart';
import 'package:Eve_One_Widget/pages/AnimatedContainerDemo.dart';
import 'package:Eve_One_Widget/pages/ExpandedDemo.dart';
import 'package:Eve_One_Widget/pages/FadeTransitionDemo.dart';
import 'package:Eve_One_Widget/pages/FutureBuilderDemo.dart';
import 'package:Eve_One_Widget/pages/Introduction.dart';
import 'package:Eve_One_Widget/pages/OpacityDemo.dart';
import 'package:Eve_One_Widget/pages/SafeAreaDemo.dart';
import 'package:Eve_One_Widget/pages/WrapDemo.dart';
import 'package:flutter/material.dart';

final routes = {
  "/": (context) => MyHomePage(title: 'Flutter EveOneWidget'),
  "/introducing": (context) => Introduction(),
  "/safe_area": (context) => SafeAreaDemo(),
  "/expanded": (context) => ExpandedDemo(),
  "/wrap": (context) => WrapDemo(),
  "/animated_container": (context) => AnimatedContainerDemo(),
  "/opacity": (context) => OpacityDemo(),
  "/future_builder": (context) => FutureBuilderDemo(),
  "/fade_transition": (context) => FadeTransitionDemo(),
  "/about_dialog": (context) => AboutDialogDemo(),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
