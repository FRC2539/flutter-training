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
      child: Row(
        children: const [
          Expanded(child: Text(
            "Margherita",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              decoration: TextDecoration.none,
            ),
          )),
          Expanded(child: Text(
            "Tomato, Mozzarella, Basil",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              decoration: TextDecoration.none,
            ),
          )),
        ]
      )
    );
  }
}