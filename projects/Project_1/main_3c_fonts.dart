import "dart:ui" as ui;
import "package:flutter/material.dart";

void main() {
  runApp(const HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp
    ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Eater',
              foreground: Paint()
                ..shader = ui.Gradient.linear(
                  const Offset(0, 20),
                  const Offset(400, 20),
                  <Color>[
                    Colors.green,
                    Colors.blue,
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}