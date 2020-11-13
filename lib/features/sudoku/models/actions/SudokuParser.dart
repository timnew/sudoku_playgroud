import 'package:built_collection/built_collection.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuPos.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuDataToken.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuValue.dart';

import 'SudokuBuilder.dart';

class SudokuParser extends SudokuBuilder with SudokuFullScan {
  final String expression;

  SudokuParser(this.expression);

  @override
  BuiltMap<SudokuPos, SudokuValue> updateCells(SudokuPos selected, BuiltSet<SudokuPos> impactZone) => parseAsBuiltMap();

  BuiltMap<SudokuPos, SudokuValue> parseAsBuiltMap() => parseAsMap().build();

  Map<SudokuPos, SudokuValue> parseAsMap() {
    final result = Map<SudokuPos, SudokuValue>();

    writeTo(result);

    return result;
  }

  void writeTo(Map<SudokuPos, SudokuValue> builder) {
    final tokens = tokenize(expression);

    final iterator = tokens.iterator;

    _parse(iterator, builder);

    assert(builder.length == 81);
  }

  Iterable<SudokuDataToken> tokenize(String expression) sync* {
    final iterator = expression.split("").asMap().entries.iterator;

    while (iterator.moveNext()) {
      final token = SudokuDataToken.parse(iterator.current.value, offset: iterator.current.key, expression: expression);
      if (token != null) yield token;
    }
  }

  // ignore: sdk_version_never
  Never _parseError(Iterator<SudokuDataToken> iterator, [String message]) {
    final token = iterator.current;
    throw FormatException(message ?? "Unexpected token ${token.runtimeType}", token?.expression, token?.offset);
  }

  SudokuDataToken _ensureNext(Iterator<SudokuDataToken> iterator) {
    if (!iterator.moveNext()) {
      _parseError(
        iterator,
        "Unexpected end of the definition",
      );
    }

    return iterator.current;
  }

  T _ensureType<T extends SudokuDataToken>(Iterator<SudokuDataToken> iterator) {
    if (!(iterator.current is T)) {
      _parseError(
        iterator,
        "Expecting $T but got ${iterator.current.runtimeType} at ${iterator.current.offset}",
      );
    }

    return iterator.current;
  }

  T _ensureNextType<T extends SudokuDataToken>(Iterator<SudokuDataToken> iterator) {
    _ensureNext(iterator);

    if (!(iterator.current is T)) {
      _parseError(
        iterator,
        "Expecting $T but got ${iterator.current.runtimeType} at ${iterator.current.offset}",
      );
    }

    return iterator.current;
  }

  void _parse(Iterator<SudokuDataToken> iterator, Map<SudokuPos, SudokuValue> builder) {
    _ensureNext(iterator).maybeMap(
      row: (_) => _blockByRow(iterator, builder),
      column: (_) => _blockByCol(iterator, builder),
      positioned: (_) => _blockByPos(iterator, builder),
      digit: (_) => _explicitText(iterator, builder),
      blank: (_) => _explicitText(iterator, builder),
      orElse: () => _parseError(iterator),
    );

    if (iterator.moveNext() == true) _parseError(iterator);
  }

  void _explicitText(Iterator<SudokuDataToken> iterator, Map<SudokuPos, SudokuValue> builder) {
    final posIterator = SudokuPos.ALL.iterator;
    posIterator.moveNext();

    bool hasNext;

    do {
      builder[posIterator.current] = iterator.current.maybeMap(
        digit: (c) => SudokuValue.given(c.digit),
        blank: (_) => SudokuValue.blank(),
        orElse: () => _parseError(iterator),
      );

      hasNext = iterator.moveNext();
      if (hasNext != posIterator.moveNext()) _parseError(iterator, "Unexpected data length");
    } while (hasNext);

    assert(builder.length == 81);
  }

  void _blockByRow(Iterator<SudokuDataToken> iterator, Map<SudokuPos, SudokuValue> builder) {
    SudokuSubPos.ALL_BY_ROW.forEach((block) {
      _parseBlock(block, iterator, builder);
    });

    _ensureNextType<RowToken>(iterator);
  }

  void _blockByCol(Iterator<SudokuDataToken> iterator, Map<SudokuPos, SudokuValue> builder) {
    SudokuSubPos.ALL_BY_COLUMN.forEach((block) {
      _parseBlock(block, iterator, builder);
    });

    _ensureNextType<ColumnToken>(iterator);
  }

  void _blockByPos(Iterator<SudokuDataToken> iterator, Map<SudokuPos, SudokuValue> builder) {
    final missings = SudokuSubPos.ALL_BY_ROW.toSet();

    while (!(_ensureNext(iterator) is PositionedToken)) {
      final row = _ensureType<DigitToken>(iterator).digit - 1;
      final col = _ensureNextType<DigitToken>(iterator).digit - 1;
      final block = SudokuSubPos(row, col);
      if (!missings.remove(block)) _parseError(iterator, "Duplicated block definition at $block");
      _parseBlock(block, iterator, builder);
    }

    missings.forEach((block) => _emptyBlock(block, builder));
  }

  void _parseBlock(
    SudokuSubPos block,
    Iterator<SudokuDataToken> iterator,
    Map<SudokuPos, SudokuValue> builder,
  ) {
    _ensureNext(iterator).maybeMap(
      row: (_) => _rowBlock(block, iterator, builder),
      column: (_) => _columnBlock(block, iterator, builder),
      positioned: (_) => _posBlock(block, iterator, builder),
      emptyBlock: (_) => _emptyBlock(block, builder),
      orElse: () => _parseError(iterator),
    );
  }

  void _emptyBlock(SudokuSubPos block, Map<SudokuPos, SudokuValue> builder) {
    for (var i = 0; i < 9; i++) {
      builder[block + i] = SudokuValue.blank();
    }
  }

  void _rowBlock(
    SudokuSubPos block,
    Iterator<SudokuDataToken> iterator,
    Map<SudokuPos, SudokuValue> builder,
  ) {
    var current = SudokuSubPos.ZERO;

    while (current != null) {
      _ensureNext(iterator).maybeMap(
        digit: (token) {
          _writeDigit(block, current, token, iterator, builder);
          current = current.nextPosHorizontally();
        },
        blank: (_) {
          _writeBlank(block, current, iterator, builder);
          current = current.nextPosHorizontally();
        },
        tripleBlank: (_) {
          if (current.isFirstOfRow) {
            for (var i = 0; i < 3; i++) {
              _writeBlank(block, current, iterator, builder);
              current = current.nextPosHorizontally();
            }
          } else {
            _parseError(iterator);
          }
        },
        orElse: () => _parseError(iterator),
      );
    }

    _ensureNextType<RowToken>(iterator);
  }

  void _columnBlock(
    SudokuSubPos block,
    Iterator<SudokuDataToken> iterator,
    Map<SudokuPos, SudokuValue> builder,
  ) {
    var current = SudokuSubPos.ZERO;

    while (current != null) {
      _ensureNext(iterator).maybeMap(
        digit: (token) {
          _writeDigit(block, current, token, iterator, builder);
          current = current.nextPosVertically();
        },
        blank: (_) {
          _writeBlank(block, current, iterator, builder);
          current = current.nextPosVertically();
        },
        tripleBlank: (_) {
          if (current.isFirstOfColumn) {
            for (var i = 0; i < 3; i++) {
              _writeBlank(block, current, iterator, builder);
              current = current.nextPosVertically();
            }
          } else {
            _parseError(iterator);
          }
        },
        orElse: () => _parseError(iterator),
      );
    }

    _ensureNextType<ColumnToken>(iterator);
  }

  void _posBlock(
    SudokuSubPos block,
    Iterator<SudokuDataToken> iterator,
    Map<SudokuPos, SudokuValue> builder,
  ) {
    final missings = SudokuSubPos.ALL_BY_ROW.toSet();

    while (!(_ensureNext(iterator) is PositionedToken)) {
      final row = _ensureType<DigitToken>(iterator).digit - 1;
      final col = _ensureNextType<DigitToken>(iterator).digit - 1;
      final cell = SudokuSubPos(row, col);
      missings.remove(cell);
      _ensureNext(iterator).maybeMap(
        digit: (token) => _writeDigit(block, cell, token, iterator, builder),
        blank: (_) => _writeBlank(block, cell, iterator, builder),
        orElse: () => _parseError(iterator),
      );
    }

    missings.forEach((current) => _writeBlank(block, current, iterator, builder));
  }

  void _writeDigit(
    SudokuSubPos block,
    SudokuSubPos cell,
    DigitToken token,
    Iterator<SudokuDataToken> iterator,
    Map<SudokuPos, SudokuValue> builder,
  ) =>
      _writeValue(block, cell, SudokuValue.given(token.digit), iterator, builder);

  void _writeBlank(
    SudokuSubPos block,
    SudokuSubPos cell,
    Iterator<SudokuDataToken> iterator,
    Map<SudokuPos, SudokuValue> builder,
  ) =>
      _writeValue(block, cell, SudokuValue.blank(), iterator, builder);

  void _writeValue(
    SudokuSubPos block,
    SudokuSubPos cell,
    SudokuValue value,
    Iterator<SudokuDataToken> iterator,
    Map<SudokuPos, SudokuValue> builder,
  ) {
    final pos = block * cell;

    if (builder.containsKey(pos)) _parseError(iterator, "Duplicated cell definition at $pos");

    builder[pos] = value;
  }
}
