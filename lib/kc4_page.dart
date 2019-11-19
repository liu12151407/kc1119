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
class Kc4Page extends StatefulWidget {
  @override
  _Kc4PageState createState() => _Kc4PageState();
}

class _Kc4PageState extends State<Kc4Page> {
  double _width = 200.0; //通过修改图片宽度来达到缩放效果
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("缩放"),
      ),
      body: Center(
        child: GestureDetector(
          //指定宽度，高度自适应
          child: Image.network(
              "https://www.baidu.com/img/bd_logo1.png?where=super",
              width: _width),
          onScaleUpdate: (ScaleUpdateDetails details) {
            setState(() {
              //缩放倍数在0.8到10倍之间
              _width = 200 * details.scale.clamp(0.8, 10.0);
            });
          },
        ),
      ),
    );
  }
}
