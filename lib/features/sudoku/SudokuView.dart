import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart' hide ValueWidgetBuilder;
import 'package:sudoku_playground/features/sudoku/SudokuTheme.dart';

import 'models/SudokuArea.dart';
import 'models/SudokuIndex.dart';
import 'models/SudokuValue.dart';

import 'SudokuGrid.dart';

class SudokuBoardView extends StatelessWidget {
  final BuiltMap<SudokuIndex, SudokuValue> sudoku;
  final BuiltMap<SudokuIndex, BuiltSet<SudokuIndex>> conflicts;
  final SudokuTheme theme;

  SudokuBoardView({
    Key key,
    @required this.sudoku,
    @required this.conflicts,
    this.theme: const SudokuTheme(),
  })  : assert(sudoku != null),
        assert(conflicts != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 3)),
      child: SudokuGrid<SudokuBlock>(
        borderWidth: 0.5,
        builder: (BuildContext context, SudokuBlock block) => SudokuBlockView(
          sudoku: sudoku,
          conflicts: conflicts,
          block: block,
          theme: theme,
        ),
        selector: (int index) => SudokuArea.blocks[index],
      ),
    );
  }
}

class SudokuBlockView extends StatelessWidget {
  final BuiltMap<SudokuIndex, SudokuValue> sudoku;
  final BuiltMap<SudokuIndex, BuiltSet<SudokuIndex>> conflicts;
  final SudokuBlock block;
  final SudokuTheme theme;

  SudokuBlockView({
    @required this.sudoku,
    @required this.conflicts,
    @required this.block,
    @required this.theme,
  })  : assert(sudoku != null),
        assert(conflicts != null),
        assert(block != null),
        assert(theme != null),
        super(key: Key(block.name));

  @override
  Widget build(BuildContext context) {
    return SudokuGrid<SudokuIndex>(
      borderWidth: 0.2,
      selector: (int index) => block[index],
      builder: (BuildContext context, SudokuIndex index) => SudokuCellView(
        index: index,
        value: sudoku[index],
        conflicts: conflicts[index],
        theme: theme,
      ),
    );
  }
}

class SudokuCellView extends StatelessWidget {
  final SudokuIndex index;

  final SudokuValue value;

  final BuiltSet<SudokuIndex> conflicts;

  final SudokuTheme theme;

  bool get hasConflict => conflicts != null;

  SudokuCellView({
    @required this.index,
    @required this.value,
    @required this.conflicts,
    @required this.theme,
  })  : assert(index != null),
        assert(value != null),
        assert(theme != null),
        super(key: Key(index.toString()));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: theme.cellBorderColor(hasConflict))),
      child: value.map(
        blank: (_) => null,
        given: (c) => Center(child: Text(c.number.toString(), style: theme.givenTextStyle)),
        filled: (c) => Center(child: Text(c.number.toString(), style: theme.filledTextStyle)),
        guessing: (c) => GuessingViewView(c, theme),
      ),
    );
  }
}

class GuessingViewView extends StatelessWidget {
  final GuessingValue value;
  final SudokuTheme theme;

  GuessingViewView(this.value, this.theme);

  @override
  Widget build(BuildContext context) {
    return SudokuGrid<int>(
      borderWidth: 0,
      selector: (int index) => index,
      builder: (context, index) => _buildMark(context, index),
    );
  }

  Widget _buildMark(BuildContext context, int index) {
    if (value.marks[index]) {
      final mark = index + 1;
      return Center(
        child: Text("$mark", style: mark == value.number ? theme.guessingTextStyle : theme.markTextStyle),
      );
    } else {
      return null;
    }
  }
}
