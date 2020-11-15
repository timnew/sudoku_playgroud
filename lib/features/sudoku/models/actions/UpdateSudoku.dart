import 'package:built_collection/built_collection.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuValue.dart';

import '../Sudoku.dart';
import '../SudokuPos.dart';
import 'SudokuBuilder.dart';

class SelectSudoku extends SudokuBuilder {
  final Sudoku sudoku;
  final SudokuPos cursor;

  SelectSudoku(this.sudoku, this.cursor);

  SudokuPos updateCursor() => cursor;

  BuiltSet<SudokuPos> updateImpactZone(SudokuPos cursor) {
    if (cursor == null) return null;
    if (cursor == sudoku.cursor) return sudoku.impactZone;
    return BuiltSet.build(
      (b) => b
        ..addAll(cursor.parentRow())
        ..addAll(cursor.parentColumn())
        ..addAll(cursor.parentBlock()),
    );
  }

  BuiltMap<SudokuPos, SudokuValue> updateCells(
          SudokuPos selected, BuiltSet<SudokuPos> impactZone) =>
      sudoku.cells;

  BuiltSetMultimap<SudokuPos, SudokuPos> updateConflicts(
    SudokuPos selected,
    BuiltSet<SudokuPos> impactZone,
    BuiltMap<SudokuPos, SudokuValue> cells,
  ) =>
      sudoku.conflicts;

  int updateFilledCount(SudokuPos selected, BuiltSet<SudokuPos> impactZone,
          BuiltMap<SudokuPos, SudokuValue> cells) =>
      sudoku.filledCellCount;
}
