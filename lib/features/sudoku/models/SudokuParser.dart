import 'package:built_collection/built_collection.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuPos.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuDataToken.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuValue.dart';

class SudokuParser {
  final String sudokuExpression;

  SudokuParser(this.sudokuExpression);

  void writeTo(MapBuilder<SudokuPos, SudokuValue> builder) {}

  Iterable<SudokuDataToken> _tokenize(String expression) sync* {
    final iterator = expression.split("").asMap().entries.iterator;

    while (iterator.moveNext()) {
      final token = SudokuDataToken.parse(iterator.current.value, offset: iterator.current.key, expression: expression);
      if (token != null) yield token;
    }
  }

  // ignore: sdk_version_never
  Never _parseError(SudokuDataToken token) {
    FormatException("Unexpected token ${token.runtimeType}", token.expression, token.offset);
  }

  void _parse(Iterable<SudokuDataToken> tokens, MapBuilder<SudokuPos, SudokuValue> builder) {
    final iterator = tokens.iterator;

    if (!iterator.moveNext()) throw FormatException("Empty expression");

    final token = iterator.current;

    token.maybeMap(
      row: (_) => _rowSudoku(iterator, builder),
      column: (_) => _columnSudoku(iterator, builder),
      positioned: (_) => _positionedSudoku(iterator, builder),
      orElse: () => _parseError(iterator.current),
    );

    if (iterator.moveNext() == true) _parseError(iterator.current);
  }

  void _rowSudoku(Iterator<SudokuDataToken> iterator, MapBuilder<SudokuPos, SudokuValue> builder) {}

  void _columnSudoku(Iterator<SudokuDataToken> iterator, MapBuilder<SudokuPos, SudokuValue> builder) {}

  void _positionedSudoku(Iterator<SudokuDataToken> iterator, MapBuilder<SudokuPos, SudokuValue> builder) {}
}
