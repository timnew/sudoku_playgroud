import 'SudokuArea.dart';

class SudokuIndex {
  final int row;

  final int col;

  final int index;
  final int blockIndex;

  SudokuIndex(this.row, this.col)
      : assert(row > 0 && row <= 9),
        assert(col > 0 && col <= 9),
        index = (row - 1) * 9 + col - 1,
        blockIndex = (row - 1) ~/ 3 * 3 + (col - 1) ~/ 3;

  SudokuRow get parentRow => SudokuArea.row(row);

  SudokuColumn get parentColumn => SudokuArea.column(col);

  SudokuBlock get parentBlock => SudokuArea.blocks[blockIndex];

  @override
  String toString() => "[$row,$col]";

  @override
  bool operator ==(Object other) => other is SudokuIndex ? index == other.index : false;

  @override
  int get hashCode => runtimeType.hashCode ^ index.hashCode;
}

class BlockIndex {
  final int row;
  final int col;
  final int index;

  BlockIndex(this.row, this.col)
      : assert(row > 0 && row <= 3),
        assert(col > 0 && col <= 3),
        index = (row - 1) * 3 + col - 1;

  BlockIndex.index(this.index)
      : assert(0 <= index && index < 9),
        row = index ~/ 3 + 1,
        col = index % 3 + 1;

  SudokuIndex childByIndex(int index) => SudokuIndex((row - 1) * 3 + 1 + index ~/ 3, (col - 1) * 3 + 1 + index % 3);

  @override
  String toString() => "Block[$row,$col]";

  @override
  bool operator ==(Object other) => other is BlockIndex ? index == other.index : false;

  @override
  int get hashCode => runtimeType.hashCode ^ index.hashCode;
}
