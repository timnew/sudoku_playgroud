import 'package:built_collection/built_collection.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuValue.dart';

import '../Sudoku.dart';
import '../SudokuPos.dart';
import 'SudokuBuilder.dart';

abstract class UpdateSudoku implements SudokuBuilder {
  final Sudoku sudoku;
  final SudokuPos cursor;

  UpdateSudoku(this.sudoku, this.cursor);

  Sudoku execute() {
    final impactZone = updateImpactZone();
    final cells = updateCells(impactZone);
    final conflicts = updateConflicts(impactZone, cells);
    final filledCellCount = updateFilledCount(cells);

    return Sudoku(
      cursor: cursor,
      impactZone: impactZone,
      cells: cells,
      conflicts: conflicts,
      filledCellCount: filledCellCount,
    );
  }

  BuiltSet<SudokuPos> updateImpactZone() => sudoku.impactZone;

  BuiltList<SudokuValue> updateCells(BuiltSet<SudokuPos> impactZone) =>
      sudoku.cells;

  BuiltSetMultimap<SudokuPos, SudokuPos> updateConflicts(
          BuiltSet<SudokuPos> impactZone, BuiltList<SudokuValue> cells) =>
      sudoku.conflicts;

  int updateFilledCount(BuiltList<SudokuValue> cells) => sudoku.filledCellCount;
}

mixin UpdateImpactZone implements UpdateSudoku {
  @override
  BuiltSet<SudokuPos> updateImpactZone() {
    if (cursor == null) return null;
    if (cursor == sudoku.cursor) return sudoku.impactZone;
    return BuiltSet.build(
      (b) => b
        ..addAll(cursor.parentRow())
        ..addAll(cursor.parentColumn())
        ..addAll(cursor.parentBlock()),
    );
  }
}

mixin UpdateConflictMap implements UpdateSudoku {
  @override
  BuiltSetMultimap<SudokuPos, SudokuPos> updateConflicts(
      BuiltSet<SudokuPos> impactZone, BuiltList<SudokuValue> cells) {
    if (cells == sudoku.cells) return sudoku.conflicts;

    final newNumber = sudoku.cells.getValue(cursor).number;
    final oldConflicts = sudoku.conflicts[cursor].asSet();
    final newConflicts = newNumber == null
        ? Set()
        : _searchConflicts(cells, impactZone, newNumber).toSet();

    if (oldConflicts.isEmpty) {
      if (newConflicts.isEmpty) {
        return sudoku.conflicts;
      } else {
        return sudoku.conflicts.rebuild((b) {
          _addConflicts(cursor, b, newConflicts);
        });
      }
    } else {
      if (newConflicts.isEmpty) {
        return sudoku.conflicts.rebuild((b) {
          _removeConflict(cursor, b, oldConflicts);
        });
      } else {
        final added = newConflicts.difference(oldConflicts);
        final removed = oldConflicts.difference(newConflicts);
        return sudoku.conflicts.rebuild((b) {
          _removeConflict(cursor, b, removed);
          _addConflicts(cursor, b, added);
        });
      }
    }
  }

  Iterable<SudokuPos> _searchConflicts(
    BuiltList<SudokuValue> cells,
    BuiltSet<SudokuPos> impactZone,
    int number,
  ) =>
      impactZone.where(
        (p) => p != cursor && cells.getValue(p).number == number,
      );

  void _addConflicts(
      SudokuPos cursor,
      SetMultimapBuilder<SudokuPos, SudokuPos> builder,
      Set<SudokuPos> newConflicts) {
    builder.addValues(cursor, newConflicts);
    for (final c in newConflicts) {
      builder.add(c, cursor);
    }
  }

  void _removeConflict(
      SudokuPos cursor,
      SetMultimapBuilder<SudokuPos, SudokuPos> builder,
      Set<SudokuPos> oldConflicts) {
    for (final c in oldConflicts) {
      builder.remove(c, cursor);
    }
    builder.removeAll(cursor);
  }
}

mixin UpdateFilledCount implements UpdateSudoku {
  @override
  int updateFilledCount(BuiltList<SudokuValue> cells) {
    if (cells == sudoku.cells) return sudoku.filledCellCount;

    return sudoku.filledCellCount -
        _valueAsFilledCount(sudoku.cells.getValue(cursor)) +
        _valueAsFilledCount(cells.getValue(cursor));
  }

  int _valueAsFilledCount(SudokuValue value) => value.maybeMap(
        given: (_) => 1,
        filled: (_) => 1,
        orElse: () => 0,
      );
}

class SelectAction extends UpdateSudoku with UpdateImpactZone {
  SelectAction(Sudoku sudoku, SudokuPos cursor) : super(sudoku, cursor);
}

class FullMarkAction extends SelectAction {
  FullMarkAction(Sudoku sudoku, SudokuPos cursor) : super(sudoku, cursor);

  @override
  BuiltList<SudokuValue> updateCells(BuiltSet<SudokuPos> impactZone) =>
      sudoku.updateValue(cursor, (current) => current.fullMark());
}

class ToggleMarkAction extends SelectAction {
  final int mark;

  ToggleMarkAction(Sudoku sudoku, SudokuPos cursor, this.mark)
      : super(sudoku, cursor);

  @override
  BuiltList<SudokuValue> updateCells(BuiltSet<SudokuPos> impactZone) =>
      sudoku.updateValue(cursor, (current) => current.toggleMark(mark));
}

class EraseAction extends SelectAction
    with UpdateConflictMap, UpdateFilledCount {
  EraseAction(Sudoku sudoku, SudokuPos cursor) : super(sudoku, cursor);

  @override
  BuiltList<SudokuValue> updateCells(BuiltSet<SudokuPos> impactZone) =>
      sudoku.updateValue(cursor, (current) => current.erase());
}

class FillAction extends SelectAction
    with UpdateConflictMap, UpdateFilledCount {
  final int number;
  FillAction(Sudoku sudoku, SudokuPos cursor, this.number)
      : super(sudoku, cursor);

  @override
  BuiltList<SudokuValue> updateCells(BuiltSet<SudokuPos> impactZone) =>
      sudoku.updateValue(cursor, (current) => current.fill(number));
}

extension SudokuCellManipuation on Sudoku {
  BuiltList<SudokuValue> updateValue(
          SudokuPos cursor, SudokuValue updater(SudokuValue current)) =>
      cells.rebuild((b) => b.putValue(
            cursor,
            updater(b.getValue(cursor)),
          ));
}
