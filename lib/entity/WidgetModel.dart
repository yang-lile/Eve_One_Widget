import 'package:flutter/material.dart';

// 没有找到修改美剧类型值的方法
enum WidgetNames {
  INTRODUCTION,
  SAFE_AREA,
  EXPANDED,
  WRAP,
  ANIMATED_CONTAINER,
  OPACITY,
  FUTURE_BUILDER,
  FADE_TRANSITION,
  FLOATING_ACTION_BUTTON,
  PAGE_VIEW,
  TABLE,
  SLIVER_APP_BAR,
  SLIVER_LIST_AND_SLIVER_GRID,
  FADE_IN_IMAGE,
  STREAM_BUILDER,
  INHERITED_MODEL,
  CLIP_R_RECT,
  HERO,
  CUSTOM_PAINT,
  TOOLTIP,
  FITTED_BOX,
  LAYOUT_BUILDER,
  ABSORB_POINTER,
  TRANSFORM,
  BACKDROP_FILTER,
  ALIGN,
  POSITIONED,
  ANIMATED_BUILDER,
  DISMISSIBLE,
  SIZED_BOX,
  VALUE_LISTENABLE_BUILDER,
  DRAGGABLE,
  ANIMATED_LIST,
  FLEXIBLE,
  MEDIA_QUERY,
  SPACER,
  INHERITED_WIDGET,
  ANIMATED_ICON,
  ASPECT_RATIO,
  LIMITED_BOX,
  PLACEHOLDER,
  RICH_TEXT,
  REORDERABLE_LIST_VIEW,
  ANIMATED_SWITCHER,
  ANIMATED_POSITIONED,
  ANIMATED_PADDING,
  ABOUT_DIALOG, // 这里是83
}

class WidgetModel {
  WidgetModel({
    @required this.widgetNames,
    @required this.subtitle,
  });

  // 使用get方法来省略两个值的存储
  final WidgetNames widgetNames;
  final String subtitle;

  String get title {
    // 第一个的标题有点长，特殊处理
    switch (widgetNames.index) {
      case 0:
        return "Introdution Widget of the Week!";
        break;
      default:
        // 转大驼峰命名
        String s = widgetNames.toString().toLowerCase().split('.').last;
        s = s[0].toUpperCase() + s.substring(1);
        return s.replaceAllMapped(
            new RegExp(r"_\w"), (match) => match.group(0).toUpperCase()[1]);
    }
  }

  String get image =>
      "assets/images/${widgetNames.toString().toLowerCase().split('.').last}.webp";
}
