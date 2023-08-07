import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.purple,
  Colors.orange,
  Colors.lime,
  Colors.red,
  Colors.teal,
  Colors.yellow,
  Colors.green,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less o equal then ${colorList.length - 1}');

  ThemeData getTheme() =>
      ThemeData(useMaterial3: true, colorSchemeSeed: colorList[selectedColor]);
}
