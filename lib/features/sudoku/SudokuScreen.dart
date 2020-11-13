import 'dart:math';

import 'package:flutter/material.dart';
import 'package:response_builder/response_builder.dart';

import 'SudokuView.dart';
import 'models/Sudoku.dart';
import 'models/SudokuPos.dart';
import 'models/SudokuValue.dart';

class SudokuScreen extends StatefulWidget {
  @override
  _SudokuScreenState createState() => _SudokuScreenState();
}

class _SudokuScreenState extends State<SudokuScreen> with BuildValue<Sudoku> {
  static Random random = Random();
  final HistoryValueNotifier<Sudoku> sudokuNotifier = HistoryValueNotifier<Sudoku>(
    31,
    initialValue: Sudoku.build(randomBuilder),
  );

  static SudokuValue randomBuilder(SudokuPos index) {
    switch (SudokuValueType.values[random.nextInt(4)]) {
      case SudokuValueType.Blank:
        return SudokuValue.blank();
      case SudokuValueType.Given:
        return SudokuValue.given(random.nextInt(8) + 1);
      case SudokuValueType.Filled:
        return SudokuValue.filled(random.nextInt(8) + 1);
      case SudokuValueType.Guessing:
        final number = random.nextInt(9);
        final hasMarks = random.nextBool();
        return SudokuValue.guessing(
          number == 0 ? null : number,
          hasMarks ? SudokuValue.FULL_MARKS : SudokuValue.EMPTY_MARKS,
        );
    }

    throw AssertionError("Impossible");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sudoku"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildValueListenable(sudokuNotifier),
        ),
      ),
    );
  }

  @override
  Widget buildValue(BuildContext context, Sudoku sudoku) => SudokuBoardView(
        sudoku: sudoku,
      );
}
