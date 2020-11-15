import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/SudokuBorder.dart';
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
  Widget build(BuildContext context) => SudokuBorder(
        borderWidth: 2,
        aspectRatio: null,
        child: Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(flex: 3, child: DigitPanel(operation)),
            Flexible(child: AltPanel(operation)),
            Flexible(child: HistoryPanel(sudoku)),
          ],
        ),
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
      border: TableBorder.symmetric(inside: BorderSide()),
      containerBuilder: (context, child) =>
          AspectRatio(aspectRatio: 1, child: child),
      selector: (int index) => index + 1,
      builder: _buildDigitButton,
    );
  }

  Widget _buildDigitButton(BuildContext context, int number) => ToggleButton(
        selected: operation.value.numberEnabled(number),
        child: Text("$number",
            style: TextStyle(
              fontSize: 24,
            )),
        onPressed: () =>
            operation.value = operation.value.onNumberPressed(number),
      );
}

class ToggleButton extends StatelessWidget {
  final double aspectRatio;

  final bool selected;
  final Widget child;
  final VoidCallback onPressed;

  const ToggleButton({
    Key key,
    this.aspectRatio: 1,
    @required this.selected,
    @required this.child,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => OperationButton(
        aspectRatio: aspectRatio,
        onPressed: this.onPressed,
        child: child,
        color: selected ? Colors.blue[100] : null,
      );
}

class OperationButton extends StatelessWidget {
  final double aspectRatio;
  final Widget child;
  final Color color;
  final VoidCallback onPressed;

  const OperationButton({
    Key key,
    this.aspectRatio: 1,
    this.color,
    this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: aspectRatio,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(),
            primary: Colors.black87,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            backgroundColor: color,
          ),
          onPressed: this.onPressed,
          child: child,
        ),
      );
}

class AltPanel extends StatelessWidget with BuildValue<UserOperation> {
  final ValueNotifier<UserOperation> operation;

  AltPanel(this.operation) : super(key: Key("altPanel"));

  @override
  Widget build(BuildContext context) => buildValueListenable(operation);

  @override
  Widget buildValue(BuildContext context, UserOperation value) => Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ToggleButton(
            key: Key("mark"),
            selected: value.markEnabled(),
            child: Icon(Icons.create),
            onPressed: () => operation.value = value.onMarkPressed(),
          ),
          ToggleButton(
            key: Key("erase"),
            selected: value.eraseEnabled(),
            child: Icon(Icons.cancel),
            onPressed: () => operation.value = value.onEnrasePressed(),
          ),
          OperationButton(
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
  Widget build(BuildContext context) => Flex(
        direction: Axis.vertical,
        children: <Widget>[
          OperationButton(
            key: Key("undo"),
            aspectRatio: 2 / 3,
            child: Icon(Icons.undo),
            onPressed: () => sudoku.undo(),
          ),
          OperationButton(
            key: Key("redo"),
            aspectRatio: 2 / 3,
            child: Icon(Icons.redo),
            onPressed: () => sudoku.redo(),
          ),
        ],
      );
}
