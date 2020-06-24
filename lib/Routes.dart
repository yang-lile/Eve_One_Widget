import 'package:eve_one_widget/main.dart';
import 'package:eve_one_widget/pages/AboutDialogDemo.dart';
import 'package:eve_one_widget/pages/AbsorbPointerDemo.dart';
import 'package:eve_one_widget/pages/AlignDemo.dart';
import 'package:eve_one_widget/pages/AnimatedBuilderDemo.dart';
import 'package:eve_one_widget/pages/AnimatedContainerDemo.dart';
import 'package:eve_one_widget/pages/AnimatedListDemo.dart';
import 'package:eve_one_widget/pages/BackdropFilterDemo.dart';
import 'package:eve_one_widget/pages/ClipRRectDemo.dart';
import 'package:eve_one_widget/pages/CustomPaintDemo.dart';
import 'package:eve_one_widget/pages/DismissibleDemo.dart';
import 'package:eve_one_widget/pages/DraggableDemo.dart';
import 'package:eve_one_widget/pages/ExpandedDemo.dart';
import 'package:eve_one_widget/pages/FadeInImageDemo.dart';
import 'package:eve_one_widget/pages/FadeTransitionDemo.dart';
import 'package:eve_one_widget/pages/FittedBoxDemo.dart';
import 'package:eve_one_widget/pages/FlexibleDemo.dart';
import 'package:eve_one_widget/pages/FloatingActionButtonDemo.dart';
import 'package:eve_one_widget/pages/FutureBuilderDemo.dart';
import 'package:eve_one_widget/pages/HeroDemo.dart';
import 'package:eve_one_widget/pages/InheritedModelDemo.dart';
import 'package:eve_one_widget/pages/Introduction.dart';
import 'package:eve_one_widget/pages/LayoutBuilderDemo.dart';
import 'package:eve_one_widget/pages/OpacityDemo.dart';
import 'package:eve_one_widget/pages/PageViewDemo.dart';
import 'package:eve_one_widget/pages/PositionedDemo.dart';
import 'package:eve_one_widget/pages/SafeAreaDemo.dart';
import 'package:eve_one_widget/pages/SizedBoxDemo.dart';
import 'package:eve_one_widget/pages/SliverAppBarDemo.dart';
import 'package:eve_one_widget/pages/SliverListAndSliverGridDemo.dart';
import 'package:eve_one_widget/pages/StreamBuilderDemo.dart';
import 'package:eve_one_widget/pages/TableDemo.dart';
import 'package:eve_one_widget/pages/TooltipDemo.dart';
import 'package:eve_one_widget/pages/TransformDemo.dart';
import 'package:eve_one_widget/pages/ValueListenableBuilderDemo.dart';
import 'package:eve_one_widget/pages/WrapDemo.dart';
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
  "/transform": (context) => TransformDemo(),
  "/backdrop_filter": (context) => BackdropFilterDemo(),
  "/align": (context) => AlignDemo(),
  "/positioned": (context) => PositionedDemo(),
  "/animated_builder": (context) => AnimatedBuilderDemo(),
  "/dismissible": (context) => DismissibleDemo(),
  "/sized_box": (context) => SizedBoxDemo(),
  "/value_listenable_builder": (context) => ValueListenableBuilderDemo(),
  "/draggable": (context) => DraggableDemo(),
  "/animated_list": (context) => AnimatedListDemo(),
  "/flexible": (context) => FlexibleDemo(),
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
