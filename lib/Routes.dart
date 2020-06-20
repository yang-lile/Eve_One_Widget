import 'package:Eve_One_Widget/main.dart';
import 'package:Eve_One_Widget/pages/AboutDialogDemo.dart';
import 'package:Eve_One_Widget/pages/AbsorbPointerDemo.dart';
import 'package:Eve_One_Widget/pages/AnimatedContainerDemo.dart';
import 'package:Eve_One_Widget/pages/ClipRRectDemo.dart';
import 'package:Eve_One_Widget/pages/CustomPaintDemo.dart';
import 'package:Eve_One_Widget/pages/ExpandedDemo.dart';
import 'package:Eve_One_Widget/pages/FadeInImageDemo.dart';
import 'package:Eve_One_Widget/pages/FadeTransitionDemo.dart';
import 'package:Eve_One_Widget/pages/FittedBoxDemo.dart';
import 'package:Eve_One_Widget/pages/FloatingActionButtonDemo.dart';
import 'package:Eve_One_Widget/pages/FutureBuilderDemo.dart';
import 'package:Eve_One_Widget/pages/HeroDemo.dart';
import 'package:Eve_One_Widget/pages/InheritedModelDemo.dart';
import 'package:Eve_One_Widget/pages/Introduction.dart';
import 'package:Eve_One_Widget/pages/LayoutBuilderDemo.dart';
import 'package:Eve_One_Widget/pages/OpacityDemo.dart';
import 'package:Eve_One_Widget/pages/PageViewDemo.dart';
import 'package:Eve_One_Widget/pages/SafeAreaDemo.dart';
import 'package:Eve_One_Widget/pages/SliverAppBarDemo.dart';
import 'package:Eve_One_Widget/pages/SliverListAndSliverGridDemo.dart';
import 'package:Eve_One_Widget/pages/StreamBuilderDemo.dart';
import 'package:Eve_One_Widget/pages/TableDemo.dart';
import 'package:Eve_One_Widget/pages/TooltipDemo.dart';
import 'package:Eve_One_Widget/pages/WrapDemo.dart';
import 'package:flutter/material.dart';

final routes = {
  "/": (context) => MyHomePage(title: 'Flutter EveOneWidget'),
  "/introduction": (context) => Introduction(),
  "/safe_area": (context) => SafeAreaDemo(),
  "/expanded": (context) => ExpandedDemo(),
  "/wrap": (context) => WrapDemo(),
  "/animated_container": (context) => AnimatedContainerDemo(),
  "/opacity": (context) => OpacityDemo(),
  "/future_builder": (context) => FutureBuilderDemo(),
  "/fade_transition": (context) => FadeTransitionDemo(),
  "/floating_action_button": (context) => FloatingActionButtonDemo(),
  "/page_view": (context) => PageViewDemo(),
  "/table": (context) => TableDemo(),
  "/sliver_app_bar": (context) => SliverAppBarDemo(),
  "/sliver_list_and_sliver_grid": (context) => SliverListAndSliverGridDemo(),
  "/fade_in_image": (context) => FadeInImageDemo(),
  "/stream_builder": (context) => StreamBuilderDemo(),
  "/inherited_model": (context) => InheritedModelDemo(),
  "/clip_r_rect": (context) => ClipRRectDemo(),
  "/hero": (context) => HeroDemo(),
  "/custom_paint": (context) => CustomPaintDemo(),
  "/tooltip": (context) => TooltipDemo(),
  "/fitted_box": (context) => FittedBoxDemo(),
  "/layout_builder": (context) => LayoutBuilderDemo(),
  "/absorb_pointer": (context) => AbsorbPointerDemo(),
  "/about_dialog": (context) => AboutDialogDemo(),
};

//固定写法
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
  return null;
}
