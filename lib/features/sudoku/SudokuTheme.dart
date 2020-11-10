import 'package:flutter/material.dart';

class SudokuTheme {
  const SudokuTheme();

  Color get normalCellBorderColor => Colors.black;

  Color get conflictedCellBorderColor => Colors.red;

  Color cellBorderColor(bool hasConflict) => hasConflict ? conflictedCellBorderColor : normalCellBorderColor;

  TextStyle get givenTextStyle => TextStyle(fontSize: 10, fontWeight: FontWeight.bold);

  TextStyle get filledTextStyle => TextStyle(fontSize: 10);

  TextStyle get markTextStyle => TextStyle(fontSize: 5);

  Color get markBorderColor => Colors.white10;

  double get markBorderWidth => 0.5;
}
