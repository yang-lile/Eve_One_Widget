// 将枚举类型复制过来，去除掉introduction然后将生成的结果复制到Routes的routes里
enum WidgetNames {
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
  ABOUT_DIALOG, // 这里是83
}
main(List<String> args) {
  for (var i in WidgetNames.values) {
    String s = i.toString().toLowerCase().split('.').last;
    s = s[0].toUpperCase() + s.substring(1);
    s = s.replaceAllMapped(
        new RegExp(r"_\w"), (match) => match.group(0).toUpperCase()[1]);
    print(
        "\"/${i.toString().toLowerCase().split('.').last}\" : (context) => ${s}Demo(),");
  }
}
