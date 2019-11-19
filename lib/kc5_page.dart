import 'package:flutter/gestures.dart';
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
class Kc5Page extends StatefulWidget {
  @override
  _Kc5PageState createState() => _Kc5PageState();
}

class _Kc5PageState extends State<Kc5Page> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false; //变色开关

  @override
  void dispose() {
    //用到GestureRecognizer的话一定要调用其dispose方法释放资源
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureRecognizer"),
      ),
      body: Center(
        child: Text.rich(TextSpan(children: [
          TextSpan(text: "你好世界"),
          TextSpan(
            text: "点我变色",
            style: TextStyle(
                fontSize: 30.0, color: _toggle ? Colors.blue : Colors.red),
            recognizer: _tapGestureRecognizer
              ..onTap = () {
                setState(() {
                  _toggle = !_toggle;
                });
              },
          ),
          TextSpan(text: "你好世界"),
        ])),
      ),
    );
  }
}
