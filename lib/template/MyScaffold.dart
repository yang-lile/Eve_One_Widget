import 'package:eve_one_widget/codeviewer/prehighlighter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  final Widget? floatingActionButton;
  final Widget? dialogContext;

  MyScaffold({
    required this.appBarTitle,
    required this.body,
    this.floatingActionButton,
    this.dialogContext,
  });

  @override
  Widget build(BuildContext context) {
    if (dialogContext != null) {
      _showDialog(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SourceCodePage(title: appBarTitle),
                ),
              );
            },
            icon: Icon(Icons.code),
            label: Text("源码"),
          ),
        ],
      ),
      body: body,
      floatingActionButton: floatingActionButton ?? null,
    );
  }

  void _showDialog(BuildContext context) {
    // TODO: 曲线救国的方法
    Future.delayed(
      Duration(milliseconds: 50),
      () => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: dialogContext,
          title: Text("学习提示"),
          actions: <Widget>[
            TextButton(
              child: Text(
                "了解",
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

class SourceCodePage extends StatelessWidget {
  final String title;
  SourceCodePage({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Source Code")),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            _buildFutureBuilder(context),
          ],
        ),
      ),
    );
  }

  // 生成带有代码高亮的代码
  FutureBuilder<List<TextSpan>> _buildFutureBuilder(BuildContext context) {
    return FutureBuilder(
      future: _showCode(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SelectableText.rich(TextSpan(
            children: snapshot.data,
          ));
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Future<List<TextSpan>> _showCode() async {
    final _string = "lib/pages/${this.title}.dart";
    final content = await rootBundle.loadString(_string);
    final _codes = content.split('\n');
    List<TextSpan> _spanedCodes = [];
    for (var _code in _codes) {
      _spanedCodes.addAll(DartSyntaxPrehighlighter().format(_code));
      _spanedCodes.add(TextSpan(
        text: "\n",
      ));
    }
    return _spanedCodes;
  }
}
