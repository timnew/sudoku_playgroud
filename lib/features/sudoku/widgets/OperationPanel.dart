import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/SudokuManager.dart';
import 'package:sudoku_playground/features/sudoku/user_operations/UserOperation.dart';
import 'package:sudoku_playground/features/sudoku/widgets/SudokuBorder.dart';
import 'package:sudoku_playground/features/sudoku/widgets/SudokuGrid.dart';

import 'SudokuButton.dart';

class OperationPanel extends StatelessWidget {
  final SudokuManager manager;

  const OperationPanel({
    Key key,
    @required this.manager,
  })  : assert(manager != null),
        super(key: key);

  @override
  Widget build(BuildContext context) => SudokuBorder(
        borderWidth: 2,
        aspectRatio: null,
        child: Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(flex: 3, child: DigitPanel(manager)),
            Flexible(child: AltPanel(manager)),
            Flexible(child: HistoryPanel(manager)),
          ],
        ),
      );
}

class DigitPanel extends StatelessWidget with BuildValue<UserOperation> {
  final SudokuManager manager;

  DigitPanel(this.manager)
      : assert(manager != null),
        super(key: Key("digitPanel"));

  @override
  Widget build(BuildContext context) =>
      buildValueListenable(manager.currentOperation);

  @override
  Widget buildValue(BuildContext context, UserOperation operation) {
    return SudokuGrid<int>(
      border: TableBorder.symmetric(inside: BorderSide()),
      containerBuilder: (context, child) =>
          AspectRatio(aspectRatio: 1, child: child),
      selector: (int index) => index + 1,
      builder: (context, number) =>
          _buildDigitButton(context, operation, number),
    );
  }

  Widget _buildDigitButton(
          BuildContext context, UserOperation operation, int number) =>
      ToggleButton(
        selected: operation.numberEnabled(number),
        child: Text("$number",
            style: TextStyle(
              fontSize: 24,
            )),
        onPressed: () =>
            manager.setOperation(operation.onNumberPressed(number)),
      );
}

class AltPanel extends StatelessWidget with BuildValue<UserOperation> {
  final SudokuManager manager;

  AltPanel(this.manager)
      : assert(manager != null),
        super(key: Key("altPanel"));

  @override
  Widget build(BuildContext context) =>
      buildValueListenable(manager.currentOperation);

  @override
  Widget buildValue(BuildContext context, UserOperation opeartion) => Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ToggleButton(
            key: Key("mark"),
            selected: opeartion.markEnabled(),
            child: Icon(Icons.create),
            onPressed: () => manager.setOperation(opeartion.onMarkPressed()),
          ),
          ToggleButton(
            key: Key("erase"),
            selected: opeartion.eraseEnabled(),
            child: Icon(Icons.cancel),
            onPressed: () => manager.setOperation(opeartion.onEnrasePressed()),
          ),
          SudokuButton(
            key: Key("select"),
            child: Icon(Icons.touch_app),
            onPressed: () => manager.setOperation(UserOperation.select()),
          ),
        ],
      );
}

class HistoryPanel extends StatelessWidget {
  final SudokuManager manager;

  HistoryPanel(this.manager)
      : assert(manager != null),
        super(key: Key("historyPanel"));

  @override
  Widget build(BuildContext context) => Flex(
        direction: Axis.vertical,
        children: <Widget>[
          SudokuButton(
            key: Key("undo"),
            aspectRatio: 2 / 3,
            child: Icon(Icons.undo),
            onPressed: () => manager.currentSudoku.undo(),
          ),
          SudokuButton(
            key: Key("redo"),
            aspectRatio: 2 / 3,
            child: Icon(Icons.redo),
            onPressed: () => manager.currentSudoku.redo(),
          ),
        ],
      );
}
