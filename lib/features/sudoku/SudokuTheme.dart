import 'package:flutter/material.dart';

class SudokuTheme {
  const SudokuTheme();

  BorderSide get sudokuBorder => BorderSide(width: 2.5);
  BorderSide get blockBorder => BorderSide(width: 2);
  BorderSide get cellBroder => BorderSide(width: 0.5);

  Color get conflictedCellBackgroundColor => Colors.red[100];

  Color get selectedCellBackgroundColor => Colors.blue[100];

  Color get highlightedCellBackgroundColor => Colors.grey[300];

  Color get normalCellBackgroundColor => Colors.white;

  Color get givenTextColor => Colors.black;

  TextStyle get givenTextStyle => TextStyle(
      fontSize: filledTextSize,
      color: givenTextColor,
      fontWeight: FontWeight.w500);

  Color get filledTextColor => Colors.blue;

  Color get conflictedTextColor => Colors.red;

  double get filledTextSize => 24;

  TextStyle get filledTextStyle =>
      TextStyle(fontSize: filledTextSize, color: filledTextColor);

  TextStyle get conflictedFilledTextStyle =>
      TextStyle(fontSize: filledTextSize, color: conflictedTextColor);

  Color get markTextColor => Colors.black45;

  double get markTextSize => 10;
  double get guessingTextSize => markTextSize * 1.2;

  TextStyle get markTextStyle =>
      TextStyle(fontSize: markTextSize, color: markTextColor);

  Color get guessingTextColor => Colors.blue;

  TextStyle get guessingTextStyle => TextStyle(
        fontSize: guessingTextSize,
        color: guessingTextColor,
        fontWeight: FontWeight.bold,
      );

  TextStyle get conflictedGuessingTextStyle => TextStyle(
        fontSize: guessingTextSize,
        color: conflictedTextColor,
        fontWeight: FontWeight.bold,
      );
}
