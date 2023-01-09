import "package:flutter/material.dart";

import 'calculator_button.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Simple Calculator',
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
      body: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(children: [ 
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            margin: const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 25.0),
            height: (MediaQuery.of(context).size.width - 160) / 4.0,
            width: MediaQuery.of(context).size.width - 70,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: const Text(
              "0",
              style: TextStyle(
                fontSize: 32.0,
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              )
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Button(label: "CE", buttonColor: Colors.grey.shade500),
                Button(label: "C", buttonColor: Colors.grey.shade500),
                Button(label: "+/-", buttonColor: Colors.grey.shade500),
                const Button(label: "\u00F7", buttonColor: Colors.orange)
              ]
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Button(label: "7", buttonColor: Colors.grey.shade800),
                Button(label: "8", buttonColor: Colors.grey.shade800),
                Button(label: "9", buttonColor: Colors.grey.shade800),
                const Button(label: "x", buttonColor: Colors.orange)
              ]
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Button(label: "4", buttonColor: Colors.grey.shade800),
                Button(label: "5", buttonColor: Colors.grey.shade800),
                Button(label: "6", buttonColor: Colors.grey.shade800),
                const Button(label: "-", buttonColor: Colors.orange)
              ]
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children:  [
                Button(label: "1", buttonColor: Colors.grey.shade800),
                Button(label: "2", buttonColor: Colors.grey.shade800),
                Button(label: "3", buttonColor: Colors.grey.shade800),
                const Button(label: "+", buttonColor: Colors.orange)
              ]
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Button(label: "0", buttonColor: Colors.grey.shade800),
                Button(label: ".", buttonColor: Colors.grey.shade800),
                const Button(label: "", buttonColor: Colors.black),
                const Button(label: "=", buttonColor: Colors.orange)
              ]
            ),
          ),
        ]),
      ),
    );
  }
}