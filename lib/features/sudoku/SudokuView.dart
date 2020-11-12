import 'package:flutter/material.dart' hide ValueWidgetBuilder;
import 'package:sudoku_playground/features/sudoku/SudokuTheme.dart';

import 'models/Sudoku.dart';
import 'models/SudokuArea.dart';
import 'models/SudokuIndex.dart';
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
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 3)),
      child: SudokuGrid<SudokuBlock>(
        borderWidth: 0.5,
        builder: (BuildContext context, SudokuBlock block) => SudokuBlockView(
          sudoku: sudoku,
          block: block,
          theme: theme,
        ),
        selector: (int index) => SudokuArea.blocks[index],
      ),
    );
  }
}

class SudokuBlockView extends StatelessWidget {
  final SudokuTheme theme;
  final Sudoku sudoku;
  final SudokuBlock block;

  SudokuBlockView({
    @required this.theme,
    @required this.sudoku,
    @required this.block,
  })  : assert(sudoku != null),
        assert(block != null),
        assert(theme != null),
        super(key: Key(block.name));

  @override
  Widget build(BuildContext context) {
    return SudokuGrid<SudokuIndex>(
      borderWidth: 0.2,
      selector: (int index) => block[index],
      builder: (BuildContext context, SudokuIndex index) => SudokuCellView(
        theme: theme,
        sudoku: sudoku,
        index: index,
      ),
    );
  }
}

class SudokuCellView extends StatelessWidget {
  final SudokuTheme theme;
  final Sudoku sudoku;
  final SudokuIndex index;

  SudokuCellView({
    @required this.theme,
    @required this.sudoku,
    @required this.index,
  })  : assert(index != null),
        assert(sudoku != null),
        assert(theme != null),
        super(key: Key(index.toString()));

  bool get isConflicted => sudoku.conflicts.contains(index);

  bool get isSelected => sudoku.selected == index;

  bool get isHighlighted => sudoku.highlighted?.contains(index) ?? false;

  SudokuValue get value => sudoku.cells[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildDecoration(),
      child: value.map(
        blank: (_) => null,
        given: (c) => Center(child: Text(c.number.toString(), style: theme.givenTextStyle)),
        filled: (c) => Center(
            child: Text(c.number.toString(),
                style: isConflicted ? theme.conflictedFilledTextStyle : theme.filledTextStyle)),
        guessing: (c) => GuessingViewView(c, theme, isConflicted),
      ),
    );
  }

  Decoration _buildDecoration() {
    return BoxDecoration(
      color: _buildCellBackground(),
      border: Border.all(color: theme.cellBorderColor),
    );
  }

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
      borderWidth: 0,
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
