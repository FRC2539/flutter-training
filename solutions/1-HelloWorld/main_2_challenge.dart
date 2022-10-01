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
            'Hello World!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle:  FontStyle.italic,
              color: Colors.red.withOpacity(0.5),
              fontSize: 50,
              decoration: TextDecoration.underline,
              decorationColor: Colors.purple,
              decorationStyle: TextDecorationStyle.wavy
            ),
          )
        ),
      ),
    );
  }
}