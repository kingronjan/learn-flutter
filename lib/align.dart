import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyAlignApp());
}


class MyAlignApp extends StatelessWidget {
  const MyAlignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Align App')),
        body: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
