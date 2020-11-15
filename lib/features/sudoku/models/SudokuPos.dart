import 'package:built_collection/built_collection.dart';

import 'SudokuValue.dart';

class SudokuPos {
  static final List<SudokuPos> ALL = List.unmodifiable(
    Iterable.generate(81, (index) => SudokuPos.index(index)),
  );

  final int row;

  final int col;

  final int index;

  final SudokuSubPos blockPos;

  SudokuPos._(this.row, this.col, this.index)
      : assert(row >= 0 && row < 9),
        assert(col >= 0 && col < 9),
        assert(0 <= index && index < 81),
        this.blockPos = SudokuSubPos(row ~/ 3, col ~/ 3);

  factory SudokuPos(int row, int col) => SudokuPos._(row, col, row * 9 + col);

  factory SudokuPos.index(int index) =>
      SudokuPos._(index ~/ 9, index % 9, index);

  Iterable<SudokuPos> parentRow() =>
      Iterable.generate(9, (i) => SudokuPos(row, i));

  Iterable<SudokuPos> parentColumn() =>
      Iterable.generate(9, (i) => SudokuPos(i, col));

  Iterable<SudokuPos> parentBlock() =>
      Iterable.generate(9, (i) => blockPos + i);

  @override
  String toString() => "[$row,$col]";

  @override
  bool operator ==(Object other) =>
      other is SudokuPos ? index == other.index : false;

  @override
  int get hashCode => runtimeType.hashCode ^ index.hashCode;
}

class SudokuSubPos {
  static final List<SudokuSubPos> ALL_BY_ROW = List.unmodifiable(
    Iterable.generate(9, (index) => SudokuSubPos.index(index)),
  );

  static final List<SudokuSubPos> ALL_BY_COLUMN =
      List.unmodifiable(_generateByColumn());

  static final ZERO = SudokuSubPos.index(0);

  final int row;
  final int col;

  final int index;

  SudokuSubPos(this.row, this.col)
      : assert(row >= 0 && row < 3),
        assert(col >= 0 && col < 3),
        index = row * 3 + col;

  SudokuSubPos.index(this.index)
      : assert(0 <= index && index < 9),
        row = index ~/ 3,
        col = index % 3;

  SudokuPos operator +(int index) =>
      SudokuPos(row * 3 + index ~/ 3, col * 3 + index % 3);

  SudokuPos operator *(SudokuSubPos pos) =>
      SudokuPos(row * 3 + pos.row, col * 3 + pos.col);

  bool get isFirstOfRow => col == 0;

  bool get isLastOfRow => col == 2;

  bool get isFirstOfColumn => row == 0;

  bool get isLastOfColumn => row == 2;

  bool get lastOfSubArea => isLastOfRow && isLastOfColumn;

  SudokuSubPos nextPosHorizontally() =>
      lastOfSubArea ? null : SudokuSubPos.index(index + 1);

  SudokuSubPos nextPosVertically() => isLastOfColumn
      ? (isLastOfRow ? null : SudokuSubPos(0, col + 1))
      : SudokuSubPos(row + 1, col);

  Iterable<SudokuPos> allChildren() => Iterable.generate(9, (i) => this + i);

  @override
  String toString() => "Sub[$row,$col]";

  @override
  bool operator ==(Object other) =>
      other is SudokuSubPos ? index == other.index : false;

  @override
  int get hashCode => runtimeType.hashCode ^ index.hashCode;

  static Iterable<SudokuSubPos> _generateByColumn() sync* {
    var current = SudokuSubPos.ZERO;

    do {
      yield current;
      current = current.nextPosVertically();
    } while (!current.lastOfSubArea);

    yield current;
  }
}

extension SudokuCellAccess on BuiltList<SudokuValue> {
  SudokuValue getValue(SudokuPos pos) => this[pos.index];
}

extension SudokuCellListAccess on List<SudokuValue> {
  SudokuValue getValue(SudokuPos pos) => this[pos.index];
  SudokuValue putValue(SudokuPos pos, SudokuValue value) =>
      this[pos.index] = value;
}

extension SudokuCeellBuilderAccess on ListBuilder<SudokuValue> {
  SudokuValue getValue(SudokuPos pos) => this[pos.index];
  SudokuValue putValue(SudokuPos pos, SudokuValue value) =>
      this[pos.index] = value;
}
