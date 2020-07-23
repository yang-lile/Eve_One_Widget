import 'package:Eve_One_Widget/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  List<_Message> _messeges = [
    _Message(id: 1, message: "1，是指某某人说的"),
    _Message(id: 2, message: "2，也是某某群友"),
    _Message(id: 0, message: "0，是你自己"),
    _Message(id: 0, message: "左边短句测试"),
    _Message(id: 1, message: "右边短句测试"),
    _Message(
        id: 0,
        message:
            "左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，\n左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，"),
    _Message(
        id: 1,
        message:
            "右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，\n右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，"),
  ];

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    return MyScaffold(
      appBarTitle: "ConstrainedBoxDemo",
      body: ListView.builder(
        itemCount: _messeges.length,
        itemBuilder: (BuildContext context, int index) {
          if (_messeges[index].id == 0) {
            return ConstrainedBox(
              constraints: BoxConstraints(maxWidth: screenW * 9 / 10),
              child: Row(
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: screenW * 8 / 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Text(_messeges[index].message),
                    ),
                  ),
                  Semantics(
                    container: true,
                    label: "头像",
                    child: Ink(
                      width: screenW / 10,
                      height: screenW / 10,
                      decoration: BoxDecoration(
                        color: Colors.blue[100 * _messeges[index].id],
                        borderRadius:
                            BorderRadius.all(Radius.circular(screenW / 20)),
                      ),
                      child: InkWell(
                        borderRadius:
                            BorderRadius.all(Radius.circular(screenW / 20)),
                        child: Container(),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {}
        },
      ),
    );
  }
}

class _Message {
  int id;
  String message;
  _Message({this.id, this.message});
}
