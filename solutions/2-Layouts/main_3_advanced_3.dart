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
      padding: const EdgeInsets.only(top: 50.0, left: 15.0),
      color: Colors.deepOrangeAccent,
      child: Column(children: [
        Row(
          children: const [
            Expanded(child: Text(
              "Margherita",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                decoration: TextDecoration.none,
              ),
            )),
            Expanded(child: Text(
              "Tomato, Mozzarella, Basil",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                decoration: TextDecoration.none,
              ),
            )),
          ]
        ),
        Row(
          children: const [
            Expanded(child: Text(
              "Marinara",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                decoration: TextDecoration.none,
              ),
            )),
            Expanded(child: Text(
              "Tomato, Garlic",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                decoration: TextDecoration.none,
              ),
            )),
          ]
        )
      ]
    ));
  }
}