import 'package:singleton/singleton.dart';

import 'SudokuIndex.dart';

class SudokuArea extends Iterable<SudokuIndex> {
  final int count;
  final List<SudokuIndex> children;
  final String name;

  @override
  Iterator<SudokuIndex> get iterator => children.iterator;

  SudokuIndex operator [](int index) => children[index];

  SudokuArea._(this.name, this.count, SudokuIndex generator(int index))
      : children = Iterable.generate(count, generator).toList(growable: false);

  static List<SudokuRow> rows = List.generate(9, (index) => SudokuRow(index + 1), growable: false);
  static List<SudokuColumn> columns = List.generate(9, (index) => SudokuColumn(index + 1), growable: false);
  static List<SudokuBlock> blocks = List.generate(9, (index) => SudokuBlock(BlockIndex.index(index)), growable: false);

  factory SudokuArea.row(int row) => rows[row - 1];

  factory SudokuArea.column(int col) => columns[col - 1];

  factory SudokuArea.block(BlockIndex blockIndex) => blocks[blockIndex.index];

  factory SudokuArea.board() => Singleton.lazy(
        () => SudokuArea._("board", 81, (i) => SudokuIndex(i ~/ 9 + 1, i % 9 + 1)),
      ).instance;
}

class SudokuRow extends SudokuArea {
  final int row;

  SudokuRow(this.row)
      : assert(1 <= row && row <= 9),
        super._("Row[$row]", 9, (i) => SudokuIndex(row, i + 1));
}

class SudokuColumn extends SudokuArea {
  final int col;

  SudokuColumn(this.col)
      : assert(1 <= col && col <= 9),
        super._("Column[$col]", 9, (i) => SudokuIndex(i + 1, col));
}

class SudokuBlock extends SudokuArea {
  final BlockIndex index;

  SudokuBlock(this.index) : super._(index.toString(), 9, index.childByIndex);
}
