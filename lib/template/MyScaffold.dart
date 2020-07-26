import 'package:Eve_One_Widget/codeviewer/prehighlighter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  final Widget floatingActionButton;

  MyScaffold({
    @required this.appBarTitle,
    @required this.body,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyFadeTransition1(
          child: Text(appBarTitle),
        ),
        actions: <Widget>[
          FlatButton.icon(
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
}

class SourceCodePage extends StatelessWidget {
  final String title;

  SourceCodePage({
    @required this.title,
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

  FutureBuilder<List<TextSpan>> _buildFutureBuilder(BuildContext context) {
    return FutureBuilder(
      future: _showCode(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          print(snapshot.data);
          return Text.rich(TextSpan(
            children: snapshot.data,
            // recognizer: LongPressGestureRecognizer(
            // )
          ));
          // return SelectableText(
          //   snapshot.data,
          //   style: TextStyle(
          //     color: Colors.black,
          //   ),
          //   toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
          // );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Future<List<TextSpan>> _showCode() async {
    String _string = "lib/pages/${this.title}.dart";
    final _content = await rootBundle.loadString(_string);
    final _codes = _content.split('\n');
    List<TextSpan> _spanedCodes = List<TextSpan>();
    for (var _code in _codes) {
      _spanedCodes.addAll(DartSyntaxPrehighlighter().format(_code));
      _spanedCodes.add(TextSpan(
        text: "\n",
      ));
    }
    return _spanedCodes;
  }
}

class MyFadeTransition1 extends StatefulWidget {
  final Widget child;

  MyFadeTransition1({@required this.child});

  @override
  _MyFadeTransition1State createState() => _MyFadeTransition1State();
}

class _MyFadeTransition1State extends State<MyFadeTransition1>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _controller,
      child: widget.child,
    );
  }
}
