import "package:flutter/material.dart";

import 'package:calculator/calculator.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Simple Layouts',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Calculator"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,
      body: const Calculator(),
    );
  }
}