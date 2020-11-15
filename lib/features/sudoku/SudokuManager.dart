import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuPos.dart';
import 'package:sudoku_playground/features/sudoku/models/actions/UpdateSudoku.dart';
import 'package:sudoku_playground/features/sudoku/user_operations/UserOperation.dart';

import 'models/Sudoku.dart';
import 'models/SudokuValue.dart';

class SudokuManager {
  static Random random = Random();

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

  final HistoryValueNotifier<Sudoku> currentSudoku =
      HistoryValueNotifier<Sudoku>(
    31,
    initialValue: Sudoku.build(randomBuilder),
  );

  final ValueNotifier<UserOperation> currentOperation =
      ValueNotifier(UserOperation.select());

  void operateOn(SudokuPos cursor) {
    final sudoku = currentSudoku.value;

    final action = currentOperation.value.map(
      select: (_) => SelectSudoku(sudoku, cursor),
      fill: (c) => null,
      eraseNumber: (c) => null,
      erase: (_) => null,
      markAll: (_) => null,
      mark: (c) => null,
      eraseMark: (c) => null,
      eraseAllMarks: (_) => null,
    );

    if (action != null) currentSudoku.putValue(action.execute());
  }

  void putAndRunOperation(UserOperation newOperation) {
    putOperation(newOperation);
    final cursor = currentSudoku.value.cursor;
    if (cursor != null) {
      operateOn(cursor);
    }
  }

  void putOperation(UserOperation newOperation) {
    currentOperation.value = newOperation;
  }
}
