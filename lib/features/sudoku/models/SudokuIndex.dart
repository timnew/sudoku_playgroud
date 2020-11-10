import 'package:freezed_annotation/freezed_annotation.dart';

part 'SudokuIndex.freezed.dart';

@freezed
abstract class SudokuIndex implements _$SudokuIndex {
  SudokuIndex._();

  @Assert('row > 0 && row <= 9')
  @Assert('col > 0 && col <= 9')
  factory SudokuIndex(int row, int col) = _SudokuIndex;

  int get index => (row - 1) * 9 + col - 1;
}
