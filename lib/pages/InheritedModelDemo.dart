/// 讲道理本应该全部更新的控件树
/// 现在只根据InheritedModel来更新数据
/// 
/// 当然，现在我们使用各种状态管理插件
/// 而不再使用这一套操作，所以InheritedModel也可以只做了解

import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class InheritedModelDemo extends StatefulWidget {
  @override
  _InheritedModelDemoState createState() => _InheritedModelDemoState();
}

class _InheritedModelDemoState extends State<InheritedModelDemo> {
  int data = 0;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "InheritedModel",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DataModel(
            number: data,
            child: ChildWidget1(),
          ),
          ChildWidget2(),
          RaisedButton(
            onPressed: () => setState(() => ++data),
            child: Text("++data"),
          ),
          RaisedButton(
            onPressed: () => setState(() => --data),
            child: Text("--data"),
          ),
        ],
      ),
    );
  }
}

class ChildWidget1 extends StatefulWidget {
  @override
  _ChildWidget1State createState() => _ChildWidget1State();
}

class _ChildWidget1State extends State<ChildWidget1> {
  @override
  Widget build(BuildContext context) {
    final data = context.dependOnInheritedWidgetOfExactType<DataModel>();
    return Center(
      child: Text("${data.number}"),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ChildWidget1 changed");
  }
}

class ChildWidget2 extends StatefulWidget {
  @override
  _ChildWidget2State createState() => _ChildWidget2State();
}

class _ChildWidget2State extends State<ChildWidget2> {
  @override
  Widget build(BuildContext context) {
    return Text("please click raise button...");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ChildWidget2 changed");
  }
}

class DataModel extends InheritedWidget {
  final int number;

  DataModel({
    this.number,
    Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(DataModel oldWidget) {
    return oldWidget.number != number;
  }
}
