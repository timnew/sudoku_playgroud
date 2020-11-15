import 'package:built_collection/built_collection.dart';

import '../Sudoku.dart';
import '../SudokuPos.dart';
import '../SudokuValue.dart';

abstract class SudokuBuilder {
  Sudoku execute() {
    final cursor = updateCursor();
    final impactZone = updateImpactZone(cursor);
    final cells = updateCells(cursor, impactZone);
    final conflicts = updateConflicts(cursor, impactZone, cells);
    final filledCellCount = updateFilledCount(cursor, impactZone, cells);

    return Sudoku(
      cursor: cursor,
      impactZone: impactZone,
      cells: cells,
      conflicts: conflicts,
      filledCellCount: filledCellCount,
    );
  }

  SudokuPos updateCursor();

  BuiltSet<SudokuPos> updateImpactZone(SudokuPos cursor);

  BuiltList<SudokuValue> updateCells(
      SudokuPos selected, BuiltSet<SudokuPos> impactZone);

  BuiltSetMultimap<SudokuPos, SudokuPos> updateConflicts(
    SudokuPos selected,
    BuiltSet<SudokuPos> impactZone,
    BuiltList<SudokuValue> cells,
  );

  int updateFilledCount(
    SudokuPos selected,
    BuiltSet<SudokuPos> impactZone,
    BuiltList<SudokuValue> cells,
  );
}

mixin SudokuFullScan implements SudokuBuilder {
  @override
  SudokuPos updateCursor() => null;

  @override
  BuiltSet<SudokuPos> updateImpactZone(SudokuPos cursor) => null;

  @override
  BuiltSetMultimap<SudokuPos, SudokuPos> updateConflicts(
    SudokuPos selected,
    BuiltSet<SudokuPos> impactZone,
    BuiltList<SudokuValue> cells,
  ) {
    return BuiltSetMultimap();
    // throw UnimplementedError(); // TODO implement this
  }

  @override
  int updateFilledCount(SudokuPos selected, BuiltSet<SudokuPos> impactZone,
          BuiltList<SudokuValue> cells) =>
      cells
          .where((value) =>
              value.type == SudokuValueType.Given ||
              value.type == SudokuValueType.Filled)
          .length;
}
