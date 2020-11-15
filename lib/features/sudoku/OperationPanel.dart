import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/SudokuGrid.dart';
import 'package:sudoku_playground/features/sudoku/models/user_operations/UserOperation.dart';

import 'models/Sudoku.dart';

class OperationPanel extends StatelessWidget {
  final ValueNotifier<UserOperation> operation;
  final HistoryValueNotifier<Sudoku> sudoku;

  const OperationPanel({
    Key key,
    @required this.operation,
    @required this.sudoku,
  })  : assert(operation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) => Flex(
        direction: Axis.vertical,
        children: <Widget>[
          DigitPanel(operation),
          AltPanel(operation),
          HistoryPanel(sudoku),
        ],
      );
}

class DigitPanel extends StatelessWidget with BuildValue<UserOperation> {
  final ValueNotifier<UserOperation> operation;

  DigitPanel(this.operation) : super(key: Key("digitPanel"));

  @override
  Widget build(BuildContext context) {
    return buildValueListenable(operation);
  }

  @override
  Widget buildValue(BuildContext context, UserOperation value) {
    return SudokuGrid<int>(
      selector: (int index) => index + 1,
      builder: _buildDigitButton,
    );
  }

  Widget _buildDigitButton(BuildContext context, int number) => ToggleButton(
        selected: operation.value.numberEnabled(number),
        child: Text("$number"),
        onPressed: () =>
            operation.value = operation.value.onNumberPressed(number),
      );
}

class ToggleButton extends StatelessWidget {
  final bool selected;
  final Widget child;
  final VoidCallback onPressed;

  const ToggleButton({
    Key key,
    @required this.selected,
    @required this.child,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toggleButtonsTheme = Theme.of(context).toggleButtonsTheme;

    return FlatButton(
      onPressed: this.onPressed,
      child: child,
      color: selected
          ? toggleButtonsTheme.selectedBorderColor
          : toggleButtonsTheme.fillColor,
    );
  }
}

class AltPanel extends StatelessWidget {
  final ValueNotifier<UserOperation> operation;

  AltPanel(this.operation) : super(key: Key("altPanel"));

  @override
  Widget build(BuildContext context) => Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          ToggleButton(
            key: Key("mark"),
            selected: operation.value.markEnabled(),
            child: Icon(Icons.create),
            onPressed: () => operation.value = operation.value.onMarkPressed(),
          ),
          ToggleButton(
            key: Key("erase"),
            selected: operation.value.eraseEnabled(),
            child: Icon(Icons.cancel),
            onPressed: () =>
                operation.value = operation.value.onEnrasePressed(),
          ),
          FlatButton(
            key: Key("select"),
            child: Icon(Icons.touch_app),
            onPressed: () => operation.value = UserOperation.select(),
          ),
        ],
      );
}

class HistoryPanel extends StatelessWidget {
  final HistoryValueNotifier<Sudoku> sudoku;

  HistoryPanel(this.sudoku) : super(key: Key("historyPanel"));

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.horizontal, children: <Widget>[
      FlatButton(
        key: Key("undo"),
        child: Icon(Icons.undo),
        onPressed: sudoku.canUndo ? () => sudoku.undo() : null,
      ),
      FlatButton(
        key: Key("redo"),
        child: Icon(Icons.redo),
        onPressed: sudoku.canRedo ? () => sudoku.redo() : null,
      ),
    ]);
  }
}
