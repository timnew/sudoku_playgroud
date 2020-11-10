import 'package:freezed_annotation/freezed_annotation.dart';

part 'SudokuIndex.freezed.dart';

@freezed
abstract class SudokuIndex implements _$SudokuIndex {
  SudokuIndex._();

  @Assert('row > 0 && row <= 9')
  @Assert('col > 0 && col <= 9')
  factory SudokuIndex(int row, int col) = _SudokuIndex;

  int get index => (row - 1) * 9 + col - 1;

  @override
  String toString() => "[$row,$col]";
}

@freezed
abstract class BlockIndex implements _$BlockIndex {
  BlockIndex._();

  @Assert('row > 0 && row <= 3')
  @Assert('col > 0 && col <= 3')
  factory BlockIndex(int row, int col) = _BlockIndex;

  factory BlockIndex.index(int index) => BlockIndex(index ~/ 3 + 1, index % 3 + 1);

  int get index => (row - 1) * 3 + col - 1;

  int get minCellRow => (row - 1) * 3 + 1;

  int get minCellCol => (col - 1) * 3 + 1;

  SudokuIndex childByIndex(int index) => SudokuIndex(minCellRow + index ~/ 3, minCellCol + index % 3);

  @override
  String toString() => "Block[$row,$col]";
}
