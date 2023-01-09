import "package:flutter/material.dart";

class Button extends StatefulWidget {
  final String label;
  final Color buttonColor;

  const Button({Key? key, required this.label, required this.buttonColor}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: (MediaQuery.of(context).size.width - 160) / 4.0,
      width: (MediaQuery.of(context).size.width - 160) / 4.0,
      child: Align(
        alignment: Alignment.center,
        child: CircleAvatar(
          backgroundColor: widget.buttonColor,
          minRadius: (MediaQuery.of(context).size.width - 160) / 8.0,
          child: Text(
            widget.label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 32.0,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            )
          )
        )
      )
    );
  }
}