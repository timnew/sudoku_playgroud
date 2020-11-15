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
      SudokuPos cursor, BuiltSet<SudokuPos> impactZone);

  BuiltSetMultimap<SudokuPos, SudokuPos> updateConflicts(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
    BuiltList<SudokuValue> cells,
  );

  int updateFilledCount(
    SudokuPos cursor,
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
  int updateFilledCount(SudokuPos cursor, BuiltSet<SudokuPos> impactZone,
          BuiltList<SudokuValue> cells) =>
      cells
          .where((value) =>
              value.type == SudokuValueType.Given ||
              value.type == SudokuValueType.Filled)
          .length;

  @override
  BuiltSetMultimap<SudokuPos, SudokuPos> updateConflicts(
    SudokuPos cursor,
    BuiltSet<SudokuPos> impactZone,
    BuiltList<SudokuValue> cells,
  ) =>
      BuiltSetMultimap.build((builder) {
        for (var index = 0; index < 9; index++) {
          _scanRows(cells, builder, index);
          _scanColumn(cells, builder, index);
          _scanBlock(cells, builder, index);
        }
      });

  List<List<SudokuPos>> _createVisitLog() =>
      List.generate(9, (index) => [], growable: false);

  void _scanRows(
    BuiltList<SudokuValue> cells,
    SetMultimapBuilder<SudokuPos, SudokuPos> builder,
    int r,
  ) =>
      _scanArea(cells, builder, (c) => SudokuPos(r, c));

  void _scanColumn(BuiltList<SudokuValue> cells,
          SetMultimapBuilder<SudokuPos, SudokuPos> builder, int c) =>
      _scanArea(cells, builder, (r) => SudokuPos(r, c));

  void _scanBlock(BuiltList<SudokuValue> cells,
      SetMultimapBuilder<SudokuPos, SudokuPos> builder, int o) {
    final block = SudokuSubPos.index(o);
    return _scanArea(cells, builder, (i) => block * SudokuSubPos.index(i));
  }

  void _scanArea(
    BuiltList<SudokuValue> cells,
    SetMultimapBuilder<SudokuPos, SudokuPos> builder,
    SudokuPos buildPos(int inner),
  ) {
    final visited = _createVisitLog();

    for (int inner = 0; inner < 9; inner++) {
      final pos = buildPos(inner);
      final number = cells.getValue(pos).number;
      if (number != null) {
        visited[number - 1].add(pos);
      }
    }

    visited.where((list) => list.length > 1).forEach((list) {
      list.forEach((pos) {
        builder.addValues(pos, list);
        builder.remove(pos, pos);
      });
    });
  }
}
