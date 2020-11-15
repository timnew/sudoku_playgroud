import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:built_collection/built_collection.dart';

import 'SudokuPos.dart';
import 'SudokuValue.dart';
import 'actions/InitializeSudoku.dart';
import 'actions/SudokuParser.dart';

part 'Sudoku.freezed.dart';

@freezed
abstract class Sudoku implements _$Sudoku {
  Sudoku._();

  @Assert("cells.length == 81")
  factory Sudoku({
    @nullable SudokuPos cursor,
    @nullable BuiltSet<SudokuPos> impactZone,
    BuiltMap<SudokuPos, SudokuValue> cells,
    BuiltSetMultimap<SudokuPos, SudokuPos> conflicts,
    int filledCellCount,
  }) = _Sudoku;

  factory Sudoku.blank() => InitializeSudoku.blank().execute();

  factory Sudoku.build(CellBuilder builder) =>
      InitializeSudoku.build(builder).execute();

  factory Sudoku.parse(String sudokuExpressions) =>
      SudokuParser(sudokuExpressions).execute();
}
