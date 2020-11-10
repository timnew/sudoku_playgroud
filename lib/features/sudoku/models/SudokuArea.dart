import 'package:singleton/singleton.dart';

import 'SudokuIndex.dart';

class SudokuArea extends Iterable<SudokuIndex> {
  final int count;
  final Iterable<SudokuIndex> _iterable;

  SudokuArea._(this.count, SudokuIndex generator(int index)) : _iterable = Iterable.generate(count, generator);

  @override
  Iterator<SudokuIndex> get iterator => _iterable.iterator;

  factory SudokuArea.row(int row) {
    assert(1 <= row && row <= 9);
    return SudokuArea._(9, (i) => SudokuIndex(row, i + 1));
  }

  factory SudokuArea.column(int col) {
    assert(1 <= col && col <= 9);
    return SudokuArea._(9, (i) => SudokuIndex(i + 1, col));
  }

  factory SudokuArea.block(int row, int col) {
    assert(row >= 1 && row <= 3);
    assert(col >= 1 && row <= 3);

    final _rowMin = (row - 1) * 3 + 1;
    final _colMin = (col - 1) * 3 + 1;

    return SudokuArea._(9, (i) => SudokuIndex(_rowMin + i ~/ 3, _colMin + i % 3));
  }

  factory SudokuArea.whole() =>
      Singleton.lazy(() => SudokuArea._(81, (i) => SudokuIndex(i ~/ 9 + 1, i % 9 + 1))).instance;
}
