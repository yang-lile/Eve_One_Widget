
import 'package:flutter/material.dart';

class AboutDialogDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => AboutDialogState();

}

class AboutDialogState extends State<AboutDialogDemo> {

  _showAboutDIalog() {
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutDialogDemo"),
      ),
      body: Center(
        child: FlatButton(onPressed: _showAboutDIalog, child: Text("showAboutDIalog")),
      ),
    );
  }
}