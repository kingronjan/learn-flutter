import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MySatefulApp());
}

class MySatefulApp extends StatefulWidget {
  const MySatefulApp({super.key});

  @override
  State<MySatefulApp> createState() => _MySatefulAppState();
}

class _MySatefulAppState extends State<MySatefulApp> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Stateful App')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              // 没有 hover 效果 需要自己实现
              child: Icon(Icons.add),
              // onDoubleTap: ,  // 双击事件
              onTap: () {
                setState(() {
                  value++;
                });
              },
            ),
            Text(value.toString()),
            TextButton(
              onPressed: () => {
                setState(() {
                  value--;
                }),
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
