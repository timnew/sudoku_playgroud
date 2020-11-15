import 'package:flutter/material.dart' hide ValueWidgetBuilder;
import 'package:provider/provider.dart';
import 'package:sudoku_playground/features/sudoku/widgets/SudokuButton.dart';
import 'package:sudoku_playground/features/sudoku/SudokuTheme.dart';

import '../models/Sudoku.dart';
import '../models/SudokuPos.dart';
import '../models/SudokuValue.dart';

import 'SudokuGrid.dart';
import '../models/user_operations/UserOperation.dart';

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
  Widget build(BuildContext context) => SudokuButton(
        color: _buildCellBackground(),
        onPressed: () => _onPressed(context),
        child: _buildContent(),
      );

  Color _buildCellBackground() {
    if (isConflicted) return theme.conflictedCellBackgroundColor;
    if (isSelected) return theme.selectedCellBackgroundColor;
    if (isHighlighted) return theme.highlightedCellBackgroundColor;
    return theme.normalCellBackgroundColor;
  }

  void _onPressed(BuildContext context) {
    final operation = context.read<UserOperation>();
    sudoku.execute(operation);
  }

  Widget _buildContent() => value.map(
        blank: (_) => null,
        given: (v) => GivenNumberView(
          value: v,
          theme: theme,
        ),
        filled: (v) => FilledNumberView(
          value: v,
          isConflicted: isConflicted,
          theme: theme,
        ),
        guessing: (v) => GuessingValueView(
          value: v,
          isConflicted: isConflicted,
          theme: theme,
        ),
      );
}

class GivenNumberView extends StatelessWidget {
  final SudokuValue value;
  final SudokuTheme theme;

  const GivenNumberView({
    Key key,
    @required this.value,
    @required this.theme,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(value.number.toString(), style: theme.givenTextStyle),
    );
  }
}

class FilledNumberView extends StatelessWidget {
  final SudokuValue value;
  final bool isConflicted;
  final SudokuTheme theme;

  const FilledNumberView({
    Key key,
    @required this.value,
    @required this.isConflicted,
    @required this.theme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style =
        isConflicted ? theme.conflictedFilledTextStyle : theme.filledTextStyle;

    return Center(
      child: Text(value.number.toString(), style: style),
    );
  }
}

class GuessingValueView extends StatelessWidget {
  final SudokuValue value;
  final SudokuTheme theme;
  final bool isConflicted;

  GuessingValueView({
    @required this.value,
    @required this.theme,
    @required this.isConflicted,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: SudokuGrid<int>(
          selector: (int index) => index,
          builder: (context, index) => _buildMark(context, index),
        ),
      );

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
