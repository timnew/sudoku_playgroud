import 'package:flutter/material.dart' hide ValueWidgetBuilder;
import 'package:sudoku_playground/features/sudoku/SudokuTheme.dart';

import 'models/Sudoku.dart';
import 'models/SudokuPos.dart';
import 'models/SudokuValue.dart';

import 'SudokuGrid.dart';

class SudokuBoardView extends StatelessWidget {
  final Sudoku sudoku;
  final SudokuTheme theme;

  SudokuBoardView({
    Key key,
    @required this.sudoku,
    this.theme: const SudokuTheme(),
  })  : assert(sudoku != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SudokuGrid<SudokuSubPos>(
      border: TableBorder.symmetric(
        outside: theme.sudokuBorder,
        inside: theme.blockBorder,
      ),
      containerBuilder: (context, child) =>
          AspectRatio(aspectRatio: 1, child: child),
      builder: (BuildContext context, SudokuSubPos block) => SudokuBlockView(
        sudoku: sudoku,
        block: block,
        theme: theme,
      ),
      selector: (int index) => SudokuSubPos.ALL_BY_ROW[index],
    );
  }
}

class SudokuBlockView extends StatelessWidget {
  final SudokuTheme theme;
  final Sudoku sudoku;
  final SudokuSubPos block;

  SudokuBlockView({
    @required this.theme,
    @required this.sudoku,
    @required this.block,
  })  : assert(sudoku != null),
        assert(block != null),
        assert(theme != null),
        super(key: Key(block.toString()));

  @override
  Widget build(BuildContext context) {
    return SudokuGrid<SudokuPos>(
      border: TableBorder.symmetric(inside: theme.cellBroder),
      containerBuilder: (context, child) =>
          AspectRatio(aspectRatio: 1, child: child),
      selector: (int index) => block + index,
      builder: (BuildContext context, SudokuPos pos) => SudokuCellView(
        theme: theme,
        sudoku: sudoku,
        pos: pos,
      ),
    );
  }
}

class SudokuCellView extends StatelessWidget {
  final SudokuTheme theme;
  final Sudoku sudoku;
  final SudokuPos pos;

  SudokuCellView({
    @required this.theme,
    @required this.sudoku,
    @required this.pos,
  })  : assert(pos != null),
        assert(sudoku != null),
        assert(theme != null),
        super(key: Key(pos.toString()));

  bool get isConflicted => sudoku.conflicts.containsKey(pos);

  bool get isSelected => sudoku.cursor == pos;

  bool get isHighlighted => sudoku.impactZone?.contains(pos) ?? false;

  SudokuValue get value => sudoku.cells[pos];

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(color: _buildCellBackground()),
        child: value.map(
          blank: (_) => null,
          given: (c) => Center(
              child: Text(c.number.toString(), style: theme.givenTextStyle)),
          filled: (c) => Center(
              child: Text(c.number.toString(),
                  style: isConflicted
                      ? theme.conflictedFilledTextStyle
                      : theme.filledTextStyle)),
          guessing: (c) => Center(
            child: GuessingViewView(c, theme, isConflicted),
          ),
        ),
      );

  Color _buildCellBackground() {
    if (isConflicted) return theme.conflictedCellBackgroundColor;
    if (isSelected) return theme.selectedCellBackgroundColor;
    if (isHighlighted) return theme.highlightedCellBackgroundColor;
    return theme.normalCellBackgroundColor;
  }
}

class GuessingViewView extends StatelessWidget {
  final GuessingValue value;
  final SudokuTheme theme;
  final bool isConflicted;

  GuessingViewView(this.value, this.theme, this.isConflicted);

  @override
  Widget build(BuildContext context) {
    return SudokuGrid<int>(
      selector: (int index) => index,
      builder: (context, index) => _buildMark(context, index),
    );
  }

  Widget _buildMark(BuildContext context, int index) {
    if (!value.marks[index]) return null;

    final mark = index + 1;
    return Center(
      child: Text("$mark", style: _markStyle(mark)),
    );
  }

  TextStyle _markStyle(int mark) {
    if (mark != value.number) return theme.markTextStyle;
    if (isConflicted) return theme.conflictedGuessingTextStyle;
    return theme.guessingTextStyle;
  }
}
