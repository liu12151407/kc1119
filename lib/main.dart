import 'package:flutter/material.dart';
import 'package:kc1119/kc1_page.dart';

import 'kc2_page.dart';
import 'kc3_page.dart';
import 'kc4_page.dart';
import 'kc5_page.dart';
import 'kc6_page.dart';
import 'kc7_page.dart';

void main() => runApp(MyApp());

///跳转到页面
jumpToPage(context, Widget widget) {
  //导航到新路由
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return widget;
  }));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 课件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 课件"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("手势检测"),
              onPressed: () {
                jumpToPage(context, Kc1Page());
              },
            ),
            RaisedButton(
              child: Text("拖动（任意方向）"),
              onPressed: () {
                jumpToPage(context, Kc2Page());
              },
            ),
            RaisedButton(
              child: Text("单一方向拖动"),
              onPressed: () {
                jumpToPage(context, Kc3Page());
              },
            ),
            RaisedButton(
              child: Text("缩放"),
              onPressed: () {
                jumpToPage(context, Kc4Page());
              },
            ),
            RaisedButton(
              child: Text("GestureRecognizer"),
              onPressed: () {
                jumpToPage(context, Kc5Page());
              },
            ),
            RaisedButton(
              child: Text("手势竞争"),
              onPressed: () {
                jumpToPage(context, Kc6Page());
              },
            ),
            RaisedButton(
              child: Text("手势冲突"),
              onPressed: () {
                jumpToPage(context, Kc7Page());
              },
            ),
          ],
        ),
      ),
    );
  }
}
