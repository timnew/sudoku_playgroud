import 'SudokuIndex.dart';

class SudokuIndexSet {
  static Iterable<SudokuIndex> rowCells(int row) {
    assert(1 <= row && row <= 9);
    return Iterable.generate(9, (i) => SudokuIndex(row, i + 1));
  }

  static Iterable<SudokuIndex> columnCells(int col) {
    assert(1 <= col && col <= 9);
    return Iterable.generate(9, (i) => SudokuIndex(i + 1, col));
  }

  static Iterable<SudokuIndex> blockCells(int row, int col) {
    assert(row >= 1 && row <= 3);
    assert(col >= 1 && row <= 3);

    final _rowMin = (row - 1) * 3 + 1;
    final _colMin = (col - 1) * 3 + 1;

    return Iterable.generate(9, (i) => SudokuIndex(_rowMin + i ~/ 3, _colMin + i % 3));
  }

  static Iterable allCells() => Iterable.generate(81, (i) => SudokuIndex(i ~/ 9 + 1, i % 9 + 1));
}
