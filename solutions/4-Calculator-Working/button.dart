import "package:flutter/material.dart";

class Button extends StatefulWidget {
  final String label;
  final Color buttonColor;
  final Color highlighColor;
  final ValueChanged<String> callback;

  const Button(
    {Key? key, 
    required this.label, 
    required this.buttonColor, 
    required this.highlighColor,
    required this.callback}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  late bool _isClicked;

  @override
  void initState()
  {
    super.initState();
    _isClicked = false;
  }  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: (MediaQuery.of(context).size.width - 160) / 4.0,
      width: (MediaQuery.of(context).size.width - 160) / 4.0,
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTapDown: (TapDownDetails tapDownDetails) {
            setState(() {
              _isClicked = !_isClicked;
            });
          },
          onTapUp: (TapUpDetails tapUpDetails) {
            setState(() {
              widget.callback(widget.label);
              _isClicked = !_isClicked;
            });
          },
          child: CircleAvatar(
            backgroundColor: !_isClicked ? widget.buttonColor : widget.highlighColor,
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
          ),
        )
    );
  }
}