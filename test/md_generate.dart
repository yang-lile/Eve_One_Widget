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

  ABOUT_DIALOG, // 这里是83
}

main(List<String> args) {
  for (var i = 0; i < WidgetNames.values.length; i++) {
    String s = WidgetNames.values[i].toString().toLowerCase().split('.').last;
    s = s[0].toUpperCase() + s.substring(1);
    s = s.replaceAllMapped(
        new RegExp(r"_\w"), (match) => match.group(0).toUpperCase()[1]);
    print("$i. $s");
  }
}
