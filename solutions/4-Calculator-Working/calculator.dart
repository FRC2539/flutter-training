import "package:flutter/material.dart";
import "package:calculator/button.dart";

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late String _currentValue;
  late String _previousValue;
  late String _operator;
  late bool _operatorPressed;

  @override
  void initState()
  {
    super.initState();
    _currentValue = "0";
    _previousValue = "0";
    _operator = "";
    _operatorPressed = false;
  }  

  void _handleDoNothing(String newValue) {}

  void _handleNumberPressed(String newValue)
  {
    setState(() {
      if (_operatorPressed)
      {
        _currentValue = (newValue == ".") ? "0." : newValue;
        _operatorPressed = false;
      }
      else if (newValue == ".")
      {
        _currentValue = !_currentValue.contains('.') ? _currentValue + newValue : _currentValue;
      }
      else if (_currentValue == "0") {
        _currentValue = newValue;
      } 
      else
      {
        if ((_currentValue[0] == "-" && _currentValue.length < 9) || _currentValue.length < 8)
        {
          _currentValue += newValue;
        }
      }
    });
  }

  void _handleOperatorPressed(String newValue)
  {
    setState(() {
      if (_operator != "" && !_operatorPressed && _previousValue != "") 
      {
        switch (_operator)
        {
          case "+":
            _currentValue = (double.parse(_previousValue) + double.parse(_currentValue)).toString();
            break;

          case "-":
            _currentValue = (double.parse(_previousValue) - double.parse(_currentValue)).toString();
            break;

          case "x":
            _currentValue = (double.parse(_previousValue) * double.parse(_currentValue)).toString();
            break;

          case "\u00F7":
            _currentValue = (double.parse(_previousValue) / double.parse(_currentValue)).toString();
            break;
        }

        _currentValue = (_currentValue.endsWith(".0")) 
          ? _currentValue.substring(0, _currentValue.length - 2)
          : _currentValue;
      }
    
      if (!_operatorPressed) 
      {
        _operator = (newValue == "=") ? "" : newValue;
        _previousValue = (newValue == "=") ? "" : _currentValue;
        _operatorPressed = true;
      }
      else 
      {
        _operator = newValue;
      }
    });
  }

  void _handleOtherPressed(String newValue)
  {
    setState(() {
      if (newValue == 'C') 
      {
        _currentValue = "0";
        _previousValue = "0";
        _operator = "";
        _operatorPressed = false;
      }
      else if (newValue == 'CE')
      {
        _currentValue = "0";
      }
      else if (newValue == '+/-')
      {
        if (_operatorPressed)
        {
          _currentValue = "0";
          _operatorPressed = false;
        }
        else if (_currentValue != "0")
        {
          _currentValue = (_currentValue[0] == "-") 
            ? _currentValue.substring(1)
            : "-$_currentValue";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Text(
            _currentValue,
            style: const TextStyle(
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
              Button(
                label: "CE", 
                buttonColor: Colors.grey.shade500, 
                highlighColor: Colors.grey.shade800,
                callback: _handleOtherPressed,
              ),
              Button(
                label: "C", buttonColor: Colors.grey.shade500, 
                highlighColor: Colors.grey.shade800,
                callback: _handleOtherPressed,
              ),
              Button(
                label: "+/-", buttonColor: Colors.grey.shade500, 
                highlighColor: Colors.grey.shade800,
                callback: _handleOtherPressed,
              ),
              Button(
                label: "\u00F7", buttonColor: Colors.orange, 
                highlighColor: Colors.orange.shade800,
                callback: _handleOperatorPressed,
              )
            ]
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            children: [
              Button(
                label: "7", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed,
              ),
              Button(
                label: "8", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed,
              ),
              Button(
                label: "9", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed,
              ),
              Button(
                label: "x", 
                buttonColor: Colors.orange, 
                highlighColor: Colors.orange.shade800,
                callback: _handleOperatorPressed,
              )
            ]
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            children: [
              Button(
                label: "4", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed,
              ),
              Button(
                label: "5", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed
              ),
              Button(
                label: "6", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500, 
                callback: _handleNumberPressed
              ),
              Button(
                label: "-", 
                buttonColor: Colors.orange, 
                highlighColor: Colors.orange.shade800,
                callback: _handleOperatorPressed
              )
            ]
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            children:  [
              Button(
                label: "1", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed,
              ),
              Button(
                label: "2", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed,
              ),
              Button(
                label: "3", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed,
              ),
              Button(
                label: "+", 
                buttonColor: Colors.orange, 
                highlighColor: Colors.orange.shade800,
                callback: _handleOperatorPressed,
              )
            ]
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            children: [
              Button(
                label: "0", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed,
              ),
              Button(
                label: ".", 
                buttonColor: Colors.grey.shade800, 
                highlighColor: Colors.grey.shade500,
                callback: _handleNumberPressed,
              ),
              Button(
                label: "", 
                buttonColor: Colors.black, 
                highlighColor: Colors.black,
                callback: _handleDoNothing,
              ),
              Button(
                label: "=", 
                buttonColor: Colors.orange, 
                highlighColor: Colors.orange.shade800,
                callback: _handleOperatorPressed,
              )
            ]
          ),
        ),
      ]),
    );
  }
}