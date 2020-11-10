import 'package:built_collection/built_collection.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuIndexSet.dart';

import 'SudokuValue.dart';
import 'SudokuIndex.dart';

typedef SudokuValue ValueBuilder(SudokuIndex index);

class Sudoku extends ResultNotifier<BuiltMap<SudokuIndex, SudokuValue>> {
  factory Sudoku.fromValues(Iterable<SudokuValue> values) => Sudoku._(
        BuiltMap.of(
          Map.fromIterables(SudokuIndexSet.allCells(), values),
        ),
      );

  factory Sudoku.build(ValueBuilder builder) => Sudoku.fromValues(
        SudokuIndexSet.allCells().map((e) => builder(e)),
      );

  factory Sudoku.blank() => Sudoku.build(
        (index) => SudokuValue.blank(),
      );

  Sudoku._(BuiltMap<SudokuIndex, SudokuValue> values) : super(verifyBoard(values));

  static BuiltMap<SudokuIndex, SudokuValue> verifyBoard(BuiltMap<SudokuIndex, SudokuValue> values) {
    // Check cell count should be sufficient, because:
    // SudokuIndex ensures the index should be valid, the maximum non-duplicated combinations is 81
    // BuiltMap ensures all the index are unique
    assert(values.length == 81);

    return values;
  }
}
