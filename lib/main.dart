import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyWidget());
}


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'disapper',
      home: Scaffold(
        body: Center(
          child: AnimatedOpacity(
            opacity: visible ? 1.0 : 0.0,
            duration: const Duration(seconds: 1),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: TextButton(
                onPressed: () => {
                  setState(() {
                    visible = !visible;
                  })
                },
                child: Text('A', style: TextStyle(fontSize: 28)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

