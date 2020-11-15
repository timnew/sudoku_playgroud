import 'dart:math';

import 'package:flutter/material.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/models/user_operations/UserOperation.dart';

import 'OperationPanel.dart';
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
  final HistoryValueNotifier<Sudoku> sudokuNotifier =
      HistoryValueNotifier<Sudoku>(
    31,
    initialValue: Sudoku.build(randomBuilder),
  );
  final ValueNotifier<UserOperation> operationNotifier =
      ValueNotifier(UserOperation.select());

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildValueListenable(sudokuNotifier),
            Padding(padding: const EdgeInsets.only(left: 8.0, top: 8.0)),
            OperationPanel(
              operation: operationNotifier,
              sudoku: sudokuNotifier,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildValue(BuildContext context, Sudoku sudoku) => SudokuBoardView(
        sudoku: sudoku,
      );
}
