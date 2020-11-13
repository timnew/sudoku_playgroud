import 'package:freezed_annotation/freezed_annotation.dart';

part 'SudokuDataToken.freezed.dart';

@freezed
abstract class SudokuDataToken implements _$SudokuDataToken {
  SudokuDataToken._();

  static RegExp _digitPattern = RegExp("[1-9]");
  static RegExp _spacePattern = RegExp("\s");

  factory SudokuDataToken.parse(String character, {int offset, String expression}) {
    if (character == '-') return SudokuDataToken.row(offset: offset, expression: expression);
    if (character == '|') return SudokuDataToken.column(offset: offset, expression: expression);
    if (character == '_') return SudokuDataToken.blank(offset: offset, expression: expression);
    if (character == '#') return SudokuDataToken.emptyBlock(offset: offset, expression: expression);
    if (_digitPattern.hasMatch(character))
      return SudokuDataToken.digit(int.parse(character), offset: offset, expression: expression);
    if (_spacePattern.hasMatch(character)) return null;

    throw FormatException("Illegal Sudoku notion: ${character}", expression, offset);
  }

  // -
  factory SudokuDataToken.row({int offset, String expression}) = RowBlockToken;

  // |
  factory SudokuDataToken.column({int offset, String expression}) = ColumnBlockToken;

  // +
  factory SudokuDataToken.positioned({int offset, String expression}) = PositionBlockToken;

  // #
  factory SudokuDataToken.emptyBlock({int offset, String expression}) = EmptyBlockToken;

  // [1-9]
  @Assert("1 <= number && number <= 9")
  factory SudokuDataToken.digit(int number, {int offset, String expression}) = DigitToken;

  // _
  factory SudokuDataToken.blank({int offset, String expression}) = BlankToken;

  // =
  factory SudokuDataToken.tripleBlank({int offset, String expression}) = TripleBlankToken;
}
