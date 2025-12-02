import 'package:flutter/material.dart';

class MyTextApp extends StatelessWidget {
  const MyTextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Text Widget Example')),
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            maxLines: 2, // 最多显示两行
            overflow: TextOverflow.ellipsis, // 超出部分显示省略号
          ),
        ),
        bottomNavigationBar: Text.rich(
          TextSpan(
            // Textspan 组合文本
            text: 'Rich ',
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: [
              TextSpan(
                text: 'Text ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Example',
                // 未定义 style，继承父级样式
              ),
            ],
          ),
        ),
      ),
    );
  }
}
