import 'package:flutter/material.dart';

class SudokuTheme {
  const SudokuTheme();

  Color get cellBorderColor => Colors.black;

  Color get conflictedCellBackgroundColor => Colors.red[100];

  Color get selectedCellBackgroundColor => Colors.blue[100];

  Color get highlightedCellBackgroundColor => Colors.white70;

  Color get normalCellBackgroundColor => Colors.white;

  Color get givenTextColor => Colors.black;

  TextStyle get givenTextStyle => TextStyle(fontSize: 32, color: givenTextColor, fontWeight: FontWeight.bold);

  Color get filledTextColor => Colors.blue;

  Color get conflictedTextColor => Colors.red;

  TextStyle get filledTextStyle => TextStyle(fontSize: 32, color: filledTextColor);

  TextStyle get conflictedFilledTextStyle => TextStyle(fontSize: 32, color: conflictedTextColor);

  Color get markTextColor => Colors.black45;

  TextStyle get markTextStyle => TextStyle(fontSize: 10, color: markTextColor);

  Color get guessingTextColor => Colors.blue;

  TextStyle get guessingTextStyle => TextStyle(fontSize: 12, color: guessingTextColor, fontWeight: FontWeight.bold);

  TextStyle get conflictedGuessingTextStyle => TextStyle(fontSize: 12, color: conflictedTextColor, fontWeight: FontWeight.bold);


  Color get markBorderColor => Colors.white10;

  double get markBorderWidth => 0.5;
}
