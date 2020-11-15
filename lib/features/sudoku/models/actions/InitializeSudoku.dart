import 'package:built_collection/built_collection.dart';

import '../SudokuPos.dart';
import '../SudokuValue.dart';
import 'SudokuBuilder.dart';

typedef SudokuValue CellBuilder(SudokuPos index);

class InitializeSudoku extends SudokuBuilder with SudokuFullScan {
  final BuiltList<SudokuValue> cells;

  InitializeSudoku._(this.cells);

  factory InitializeSudoku.fromCellValues(Iterable<SudokuValue> values) =>
      InitializeSudoku._(values.toBuiltList());

  factory InitializeSudoku.build(CellBuilder builder) =>
      InitializeSudoku.fromCellValues(
        SudokuPos.ALL.map((e) => builder(e)),
      );

  factory InitializeSudoku.blank() => InitializeSudoku._(
        List.filled(81, SudokuValue.blank()).toBuiltList(),
      );

  @override
  BuiltList<SudokuValue> updateCells(
          SudokuPos selected, BuiltSet<SudokuPos> impactZone) =>
      cells;
}
