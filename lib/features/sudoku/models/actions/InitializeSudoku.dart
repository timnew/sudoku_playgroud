import 'package:built_collection/built_collection.dart';

import '../SudokuPos.dart';
import '../SudokuValue.dart';
import 'SudokuBuilder.dart';

typedef SudokuValue CellBuilder(SudokuPos index);

class InitializeSudoku extends SudokuBuilder with SudokuFullScan {
  final BuiltMap<SudokuPos, SudokuValue> cells;

  InitializeSudoku._(this.cells);

  factory InitializeSudoku.fromCellValues(Iterable<SudokuValue> values) => InitializeSudoku._(
        BuiltMap.of(Map.fromIterables(SudokuPos.ALL, values)),
      );

  factory InitializeSudoku.build(CellBuilder builder) => InitializeSudoku.fromCellValues(
        SudokuPos.ALL.map((e) => builder(e)),
      );

  factory InitializeSudoku.blank() => InitializeSudoku.build((index) => SudokuValue.blank());

  @override
  BuiltMap<SudokuPos, SudokuValue> updateCells(SudokuPos selected, BuiltSet<SudokuPos> impactZone) => cells;
}
