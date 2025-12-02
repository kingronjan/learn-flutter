import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyStatelessApp());
}

class MyStatelessApp extends StatelessWidget {
  const MyStatelessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Stateless App')),
        body: Center(child: Text('Hello, World!')),
        bottomNavigationBar: Container(
          height: 80,  // 需要定义高度才可以显示出来
          child: Center(child: Text('this is bottomNavigationBar')),  // Center 用于将 text 居中显示
        ),
      ),
    );
  }
}
