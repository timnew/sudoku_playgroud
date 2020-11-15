import 'package:built_collection/built_collection.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuValue.dart';

import '../Sudoku.dart';
import '../SudokuPos.dart';
import 'SudokuBuilder.dart';

class SelectAction extends SudokuBuilder {
  final Sudoku sudoku;
  final SudokuPos cursor;

  SelectAction(this.sudoku, this.cursor);

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

class FullMarkAction extends SelectAction {
  FullMarkAction(Sudoku sudoku, SudokuPos cursor) : super(sudoku, cursor);

  @override
  BuiltMap<SudokuPos, SudokuValue> updateCells(
    SudokuPos selected,
    BuiltSet<SudokuPos> impactZone,
  ) =>
      sudoku.updateValue(cursor, (current) => current.fullMark());
}

class ToogleMarkAction extends SelectAction {
  final int mark;

  ToogleMarkAction(Sudoku sudoku, SudokuPos cursor, this.mark)
      : super(sudoku, cursor);

  @override
  BuiltMap<SudokuPos, SudokuValue> updateCells(
    SudokuPos selected,
    BuiltSet<SudokuPos> impactZone,
  ) =>
      sudoku.updateValue(cursor, (current) => current.toggleMark(mark));
}

class FillAction extends SelectAction {
  final int number;
  FillAction(Sudoku sudoku, SudokuPos cursor, this.number)
      : super(sudoku, cursor);

  @override
  BuiltMap<SudokuPos, SudokuValue> updateCells(
    SudokuPos selected,
    BuiltSet<SudokuPos> impactZone,
  ) =>
      sudoku.updateValue(cursor, (current) => current.fill(number));
}

class EraseAction extends SelectAction {
  EraseAction(Sudoku sudoku, SudokuPos cursor) : super(sudoku, cursor);

  @override
  BuiltMap<SudokuPos, SudokuValue> updateCells(
    SudokuPos selected,
    BuiltSet<SudokuPos> impactZone,
  ) =>
      sudoku.updateValue(cursor, (current) => current.erase());
}

extension SudokuCellManipuation on Sudoku {
  BuiltMap<SudokuPos, SudokuValue> updateValue(
          SudokuPos cursor, SudokuValue updater(SudokuValue current)) =>
      cells.rebuild((b) => b[cursor] = updater(b[cursor]));
}
