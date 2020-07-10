// 将枚举类型复制过来，去除掉introduction然后将生成的结果复制到Routes的routes里
enum WidgetNames {
  REORDERABLE_LIST_VIEW,
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
