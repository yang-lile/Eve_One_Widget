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
  String title;

  SourceCodePage({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Source Code")),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: _buildFutureBuilder(),
        ),
      ),
    );
  }

  FutureBuilder<String> _buildFutureBuilder() {
    return FutureBuilder(
      future: _showCode(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SelectableText(
            snapshot.data,
            style: TextStyle(
              color: Colors.black,
            ),
            toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Future<String> _showCode() {
    String _string = "lib/pages/${this.title}.dart";
    return rootBundle.loadString(_string);
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
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween(
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
