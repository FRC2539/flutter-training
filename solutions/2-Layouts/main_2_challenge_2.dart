import "package:flutter/material.dart";

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
    return Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      margin: const EdgeInsets.all(50.0),
      child: const Text(
        "Team2539",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 25),
      )
    );
  }
}