import 'package:flutter/material.dart';

class AboutDialogDemo extends StatelessWidget {
  _showAboutDIalog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationIcon: FlutterLogo(
        size: 60,
        colors: Colors.red,
      ),
      applicationName: "WOW",
      applicationVersion: "0.0.1",
      children: [
        Column(
          children: <Widget>[
            Text("*********"),
            Text("*********"),
            Text("*********"),
            Text("*********"),
          ],
        )
      ],
      applicationLegalese: "MIT",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutDialogDemo"),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () => _showAboutDIalog(context),
            child: Text("showAboutDIalog")),
      ),
    );
  }
}
