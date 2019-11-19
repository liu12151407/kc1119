import 'package:flutter/material.dart';

/**
 * ***********************************************
 * 包路径：
 * 类描述：
 * 创建人：Liu Yinglong[PHONE：13281160095]
 * 创建时间：2019/11/19
 * 修改人：
 * 修改时间：2019/11/19
 * 修改备注：
 * ***********************************************
 */
class Kc3Page extends StatefulWidget {
  @override
  _Kc3PageState createState() => _Kc3PageState();
}

class _Kc3PageState extends State<Kc3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("单一方向拖动"),
      ),
      body: _DragVertical(),
    );
  }
}

class _DragVertical extends StatefulWidget {
  @override
  _DragVerticalState createState() => new _DragVerticalState();
}

class _DragVerticalState extends State<_DragVertical> {
  double _top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: _top,
          child: GestureDetector(
              child: CircleAvatar(child: Text("A")),
              //垂直方向拖动事件
              onVerticalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _top += details.delta.dy;
                });
              }),
        )
      ],
    );
  }
}
