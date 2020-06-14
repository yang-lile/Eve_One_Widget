import 'package:flutter/material.dart';

class DraggableDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DraggableState();
}

class DraggableState extends State<DraggableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DraggableDemo"),
      ),
      body: Container(
        child: Draggable(
          feedback: FloatingActionButton(child: Icon(Icons.add),onPressed: (){}),
          child: FloatingActionButton(child: Icon(Icons.add),onPressed: (){})
        ), 
      ),
    );
  }

}