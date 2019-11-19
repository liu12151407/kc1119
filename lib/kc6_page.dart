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
class Kc6Page extends StatefulWidget {
  @override
  _Kc6PageState createState() => _Kc6PageState();
}

class _Kc6PageState extends State<Kc6Page> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("手势竞争"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: CircleAvatar(child: Text("A")),
              //垂直方向拖动事件
              onVerticalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _top += details.delta.dy;
                });
              },
              onHorizontalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _left += details.delta.dx;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
