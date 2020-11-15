import 'dart:math';

import 'package:built_collection/built_collection.dart';
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
        return SudokuValue.guessing(
          List.generate(9, (_) => random.nextBool(), growable: false)
              .toBuiltList(),
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
      select: (_) => SelectAction(sudoku, cursor),
      fill: (c) => FillAction(sudoku, cursor, c.number),
      erase: (_) => EraseAction(sudoku, cursor),
      markAll: (_) => FullMarkAction(sudoku, cursor),
      mark: (c) => ToggleMarkAction(sudoku, cursor, c.number),
    );

    if (action != null) currentSudoku.putValue(action.execute());
  }

  void setOperation(UserOperation newOperation) {
    currentOperation.value = newOperation;

    final cursor = currentSudoku.value.cursor;
    if (cursor != null) {
      operateOn(cursor);
    }
  }
}
