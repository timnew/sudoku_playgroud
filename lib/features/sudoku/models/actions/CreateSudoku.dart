import 'package:built_collection/built_collection.dart';
import 'package:sudoku_playground/features/sudoku/models/Sudoku.dart';

import '../SudokuPos.dart';
import '../SudokuValue.dart';
import 'SudokuBuilder.dart';

abstract class CreateSudoku implements SudokuBuilder {
  factory CreateSudoku.fromCellValues(Iterable<SudokuValue> values) =>
      _CreateSudoku._(values.toBuiltList());

  factory CreateSudoku.build(CellBuilder builder) =>
      CreateSudoku.fromCellValues(
        SudokuPos.ALL.map((e) => builder(e)),
      );

  factory CreateSudoku.blank() => _CreateSudoku._(
        List.filled(81, SudokuValue.blank()).toBuiltList(),
      );

  CreateSudoku();

  @override
  Sudoku execute() {
    final cells = buildCells();
    final conflicts = buildConflicts(cells);
    final filledCellCount = countFilledCells(cells);

    return Sudoku(
      cells: cells,
      conflicts: conflicts,
      filledCellCount: filledCellCount,
    );
  }

  BuiltList<SudokuValue> buildCells();

  int countFilledCells(BuiltList<SudokuValue> cells) => cells
      .where((value) =>
          value.type == SudokuValueType.Given ||
          value.type == SudokuValueType.Filled)
      .length;

  BuiltSetMultimap<SudokuPos, SudokuPos> buildConflicts(
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

typedef SudokuValue CellBuilder(SudokuPos index);

class _CreateSudoku extends CreateSudoku {
  final BuiltList<SudokuValue> cells;

  _CreateSudoku._(this.cells);

  @override
  BuiltList<SudokuValue> buildCells() => cells;
}
