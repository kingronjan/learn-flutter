import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyFlexApp());
}


class MyFlexApp extends StatelessWidget {
  const MyFlexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flex Widget Example'),
        ),
        body: Center(
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  height: 100,
                  child: Center(child: Text('Flex 2')),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: Center(child: Text('Flex 1')),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,  // 实现和 Expanded 相同的效果，需要同时设置其余的 Flexible 兄弟组件
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: Center(child: Text('Flex 1')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
