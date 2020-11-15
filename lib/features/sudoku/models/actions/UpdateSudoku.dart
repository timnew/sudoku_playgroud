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

  BuiltList<SudokuValue> updateCells(
          SudokuPos cursor, BuiltSet<SudokuPos> impactZone) =>
      sudoku.cells;

  BuiltSetMultimap<SudokuPos, SudokuPos> updateConflicts(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
    BuiltList<SudokuValue> cells,
  ) =>
      sudoku.conflicts;

  int updateFilledCount(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
    BuiltList<SudokuValue> cells,
  ) =>
      sudoku.filledCellCount;
}

class FullMarkAction extends SelectAction {
  FullMarkAction(Sudoku sudoku, SudokuPos cursor) : super(sudoku, cursor);

  @override
  BuiltList<SudokuValue> updateCells(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
  ) =>
      sudoku.updateValue(cursor, (current) => current.fullMark());
}

class ToogleMarkAction extends SelectAction {
  final int mark;

  ToogleMarkAction(Sudoku sudoku, SudokuPos cursor, this.mark)
      : super(sudoku, cursor);

  @override
  BuiltList<SudokuValue> updateCells(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
  ) =>
      sudoku.updateValue(cursor, (current) => current.toggleMark(mark));
}

class EraseAction extends SelectAction
    with UpdateConflictMap, UpdateFilledCount {
  EraseAction(Sudoku sudoku, SudokuPos cursor) : super(sudoku, cursor);

  @override
  BuiltList<SudokuValue> updateCells(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
  ) =>
      sudoku.updateValue(cursor, (current) => current.erase());
}

class FillAction extends SelectAction
    with UpdateConflictMap, UpdateFilledCount {
  final int number;
  FillAction(Sudoku sudoku, SudokuPos cursor, this.number)
      : super(sudoku, cursor);

  @override
  BuiltList<SudokuValue> updateCells(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
  ) =>
      sudoku.updateValue(cursor, (current) => current.fill(number));
}

mixin UpdateFilledCount implements SelectAction {
  @override
  int updateFilledCount(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
    BuiltList<SudokuValue> cells,
  ) {
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

mixin UpdateConflictMap implements SelectAction {
  @override
  BuiltSetMultimap<SudokuPos, SudokuPos> updateConflicts(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
    BuiltList<SudokuValue> cells,
  ) {
    if (cells == sudoku.cells) return sudoku.conflicts;

    final newNumber = sudoku.cells.getValue(cursor).number;
    final oldConflicts = sudoku.conflicts[cursor].asSet();
    final newConflicts = newNumber == null
        ? Set()
        : _searchConflicts(cells, cursor, impactZone, newNumber).toSet();

    print(oldConflicts);
    print(newConflicts);

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
    SudokuPos cursor,
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

extension SudokuCellManipuation on Sudoku {
  BuiltList<SudokuValue> updateValue(
          SudokuPos cursor, SudokuValue updater(SudokuValue current)) =>
      cells.rebuild((b) => b.putValue(
            cursor,
            updater(b.getValue(cursor)),
          ));
}
