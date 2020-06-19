import 'package:Eve_One_Widget/Routes.dart';
import 'package:Eve_One_Widget/entity/WidgetModel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter EveOneWidget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.black,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var subtitles = <String>[
    "Stateless Widget",
    "Stateful Widget",
    "introducing"
  ];
  List<int> subtitlesIndex = [
    2, // 介绍
    0, 0, 0, 1, 1, // 1-5
    0, 0, 0, 0, 0, // 6-10
    0, 0, 0, 0, 1, // 11-15
    0, 0, // 16-20
    0, // 83
  ];

  List<WidgetModel> widgetModels = List();

  _onPressed(int index) {
    Navigator.pushNamed(context, routes.keys.toList()[index + 1]);
  }

  @override
  void initState() {
    super.initState();

    int length = WidgetNames.values.length;
    for (int i = 0; i < length; i++) {
      widgetModels.add(
        WidgetModel(
          widgetNames: WidgetNames.values[i],
          subtitle: subtitles[subtitlesIndex[i]],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, int index) {
            return FlatButton(
              child: _buildListElement(index),
              onPressed: () => _onPressed(index),
            );
          },
          itemCount: widgetModels.length,
        ),
      ),
    );
  }

  Container _buildListElement(int index) {
    return Container(
      padding: EdgeInsets.only(left: 0.0, top: 10, right: 16.0, bottom: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 30.0,
            child: Text(
              (1 + index).toString(),
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Hero(
            tag: "image" + index.toString(),
            child: Image.asset(
              this.widgetModels[index].image,
              width: 120,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16.0, bottom: 10.0),
                  child: Hero(
                    tag: this.widgetModels[index].title,
                    child: Text(
                      this.widgetModels[index].title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    this.widgetModels[index].subtitle,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
