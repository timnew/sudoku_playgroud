import 'package:built_collection/built_collection.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuIndexSet.dart';

import 'SudokuCell.dart';
import 'SudokuIndex.dart';

typedef SudokuCell CellBuilder(SudokuIndex index);

class Sudoku extends ResultNotifier<BuiltMap<SudokuIndex, SudokuCell>> {
  factory Sudoku.of(Iterable<MapEntry<SudokuIndex, SudokuCell>> entries) =>
      Sudoku._(BuiltMap.of(Map.fromEntries(entries)));

  factory Sudoku.build(CellBuilder builder) => Sudoku.of(SudokuBoard().children().map((e) => MapEntry(e, builder(e))));

  factory Sudoku.blank() => Sudoku.build((index) => SudokuCell.blank());

  Sudoku._(BuiltMap<SudokuIndex, SudokuCell> cells) : super(verifyBoard(cells));

  static BuiltMap<SudokuIndex, SudokuCell> verifyBoard(BuiltMap<SudokuIndex, SudokuCell> cells) {
    // Check cell count should be sufficient, because:
    // SudokuIndex ensures the index should be valid, the maximum non-duplicated combinations is 81
    // BuiltMap ensures all the index are unique
    assert(cells.length == 81);

    return cells;
  }
}

class SudokuView {}
