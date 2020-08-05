import 'package:Eve_One_Widget/main.dart';
import 'package:Eve_One_Widget/pages/AboutDialogDemo.dart';
import 'package:Eve_One_Widget/pages/AbsorbPointerDemo.dart';
import 'package:Eve_One_Widget/pages/AlignDemo.dart';
import 'package:Eve_One_Widget/pages/AnimatedBuilderDemo.dart';
import 'package:Eve_One_Widget/pages/AnimatedContainerDemo.dart';
import 'package:Eve_One_Widget/pages/AnimatedIconDemo.dart';
import 'package:Eve_One_Widget/pages/AnimatedListDemo.dart';
import 'package:Eve_One_Widget/pages/AnimatedPaddingDemo.dart';
import 'package:Eve_One_Widget/pages/AnimatedPositionedDemo.dart';
import 'package:Eve_One_Widget/pages/AnimatedSwitcherDemo.dart';
import 'package:Eve_One_Widget/pages/AspectRatioDemo.dart';
import 'package:Eve_One_Widget/pages/BackdropFilterDemo.dart';
import 'package:Eve_One_Widget/pages/ClipRRectDemo.dart';
import 'package:Eve_One_Widget/pages/ConstrainedBoxDemo.dart';
import 'package:Eve_One_Widget/pages/CustomPaintDemo.dart';
import 'package:Eve_One_Widget/pages/DismissibleDemo.dart';
import 'package:Eve_One_Widget/pages/DraggableDemo.dart';
import 'package:Eve_One_Widget/pages/ExpandedDemo.dart';
import 'package:Eve_One_Widget/pages/FadeInImageDemo.dart';
import 'package:Eve_One_Widget/pages/FadeTransitionDemo.dart';
import 'package:Eve_One_Widget/pages/FittedBoxDemo.dart';
import 'package:Eve_One_Widget/pages/FlexibleDemo.dart';
import 'package:Eve_One_Widget/pages/FloatingActionButtonDemo.dart';
import 'package:Eve_One_Widget/pages/FutureBuilderDemo.dart';
import 'package:Eve_One_Widget/pages/HeroDemo.dart';
import 'package:Eve_One_Widget/pages/IndexedStackDemo.dart';
import 'package:Eve_One_Widget/pages/InheritedModelDemo.dart';
import 'package:Eve_One_Widget/pages/InheritedWidgetDemo.dart';
import 'package:Eve_One_Widget/pages/Introduction.dart';
import 'package:Eve_One_Widget/pages/LayoutBuilderDemo.dart';
import 'package:Eve_One_Widget/pages/LimitedBoxDemo.dart';
import 'package:Eve_One_Widget/pages/MediaQueryDemo.dart';
import 'package:Eve_One_Widget/pages/OpacityDemo.dart';
import 'package:Eve_One_Widget/pages/PageViewDemo.dart';
import 'package:Eve_One_Widget/pages/PlaceholderDemo.dart';
import 'package:Eve_One_Widget/pages/PositionedDemo.dart';
import 'package:Eve_One_Widget/pages/ReorderableListViewDemo.dart';
import 'package:Eve_One_Widget/pages/RichTextDemo.dart';
import 'package:Eve_One_Widget/pages/SafeAreaDemo.dart';
import 'package:Eve_One_Widget/pages/SemanticsDemo.dart';
import 'package:Eve_One_Widget/pages/SizedBoxDemo.dart';
import 'package:Eve_One_Widget/pages/SliverAppBarDemo.dart';
import 'package:Eve_One_Widget/pages/SliverListAndSliverGridDemo.dart';
import 'package:Eve_One_Widget/pages/SpacerDemo.dart';
import 'package:Eve_One_Widget/pages/StackDemo.dart';
import 'package:Eve_One_Widget/pages/StreamBuilderDemo.dart';
import 'package:Eve_One_Widget/pages/TableDemo.dart';
import 'package:Eve_One_Widget/pages/TooltipDemo.dart';
import 'package:Eve_One_Widget/pages/TransformDemo.dart';
import 'package:Eve_One_Widget/pages/ValueListenableBuilderDemo.dart';
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
  "/media_query": (context) => MediaQueryDemo(),
  "/spacer": (context) => SpacerDemo(),
  "/inherited_widget": (context) => InheritedWidgetDemo(),
  "/animated_icon": (context) => AnimatedIconDemo(),
  "/aspect_ratio": (context) => AspectRatioDemo(),
  "/limited_box": (context) => LimitedBoxDemo(),
  "/placeholder": (context) => PlaceholderDemo(),
  "/rich_text": (context) => RichTextDemo(),
  "/reorderable_list_view": (context) => ReorderableListViewDemo(),
  "/animated_switcher": (context) => AnimatedSwitcherDemo(),
  "/animated_positioned": (context) => AnimatedPositionedDemo(),
  "/animated_padding": (context) => AnimatedPaddingDemo(),
  "/indexed_stack": (context) => IndexedStackDemo(),
  "/semantics": (context) => SemanticsDemo(),
  "/constrained_box": (context) => ConstrainedBoxDemo(),
  "/stack": (context) => StackDemo(),
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
