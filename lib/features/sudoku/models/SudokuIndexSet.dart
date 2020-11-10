import 'SudokuIndex.dart';

abstract class SudokuIndexSet {
  int get count;

  Iterable<SudokuIndex> children();
}

class SudokuRow implements SudokuIndexSet {
  final int row;

  const SudokuRow(this.row) : assert(1 <= row && row <= 9);

  @override
  int get count => 9;

  @override
  Iterable<SudokuIndex> children() => Iterable.generate(count, (i) => SudokuIndex(row, i + 1));
}

class SudokuColumn implements SudokuIndexSet {
  final int col;

  const SudokuColumn(this.col) : assert(1 <= col && col <= 9);

  @override
  int get count => 9;

  @override
  Iterable<SudokuIndex> children() => Iterable.generate(count, (i) => SudokuIndex(i + 1, col));
}

class SudokuBlock implements SudokuIndexSet {
  final int row;
  final int col;

  final int _rowMin;

  final int _colMin;

  const SudokuBlock(this.row, this.col)
      : assert(row >= 1 && row <= 3),
        assert(col >= 1 && row <= 3),
        _rowMin = (row - 1) * 3 + 1,
        _colMin = (col - 1) * 3 + 1;

  @override
  int get count => 9;

  @override
  Iterable<SudokuIndex> children() => Iterable.generate(count, (i) => SudokuIndex(_rowMin + i ~/ 3, _colMin + i % 3));
}

class SudokuBoard implements SudokuIndexSet {
  @override
  int get count => 9 * 9;

  @override
  Iterable<SudokuIndex> children() => Iterable.generate(count, (i) => SudokuIndex(i ~/ 9 + 1, i % 9 + 1));
}
