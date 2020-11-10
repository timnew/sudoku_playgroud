import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/models/Sudoku.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuValue.dart';

import 'SudokuView.dart';
import 'models/SudokuIndex.dart';

class SudokuScreen extends StatefulWidget {
  @override
  _SudokuScreenState createState() => _SudokuScreenState();
}

class _SudokuScreenState extends State<SudokuScreen> with BuildResult<BuiltMap<SudokuIndex, SudokuValue>> {
  static Random random = Random();
  final Sudoku sudoku = Sudoku.build(randomBuilder);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sudoku"),
      ),
      body: buildResultListenable(sudoku),
    );
  }

  static SudokuValue randomBuilder(SudokuIndex index) {
    switch (SudokuValueType.values[random.nextInt(3)]) {
      case SudokuValueType.Blank:
        return SudokuValue.blank();
      case SudokuValueType.Given:
        return SudokuValue.given(random.nextInt(9));
      case SudokuValueType.Filled:
        return SudokuValue.filled(random.nextInt(9));
      case SudokuValueType.Guessing:
        final number = random.nextInt(10);
        final hasMarks = random.nextBool();
        return SudokuValue.guessing(
          number == 10 ? null : number,
          hasMarks ? SudokuValue.FULL_MARKS : SudokuValue.EMPTY_MARKS,
        );
    }

    throw AssertionError("Impossible");
  }

  @override
  Widget buildValue(BuildContext context, BuiltMap<SudokuIndex, SudokuValue> sudoku) {
    return SudokuBoardView(
      sudoku: sudoku,
      conflicts: BuiltMap(),
    );
  }
}
