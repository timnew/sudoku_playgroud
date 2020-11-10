import 'package:flutter/material.dart';

class SudokuTheme {
  const SudokuTheme();

  Color get normalCellBorderColor => Colors.black;

  Color get conflictedCellBorderColor => Colors.red;

  Color cellBorderColor(bool hasConflict) => hasConflict ? conflictedCellBorderColor : normalCellBorderColor;

  Color get givenTextColor => Colors.black;

  TextStyle get givenTextStyle => TextStyle(fontSize: 32, color: givenTextColor, fontWeight: FontWeight.bold);

  Color get filledTextColor => Colors.blue;

  TextStyle get filledTextStyle => TextStyle(fontSize: 32, color: filledTextColor);

  Color get markTextColor => Colors.black45;

  TextStyle get markTextStyle => TextStyle(fontSize: 10, color: markTextColor);

  Color get guessingTextColor => Colors.blue;

  TextStyle get guessingTextStyle => TextStyle(fontSize: 12, color: guessingTextColor, fontWeight: FontWeight.bold);

  Color get markBorderColor => Colors.white10;

  double get markBorderWidth => 0.5;
}
