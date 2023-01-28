import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: _isChecked,
        onChanged: (value) => setState(() {
              _isChecked = value as bool;
            }));
  }
}
