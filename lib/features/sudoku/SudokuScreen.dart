import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/SudokuManager.dart';

import 'widgets/OperationPanel.dart';
import 'widgets/SudokuView.dart';
import 'models/Sudoku.dart';

class SudokuScreen extends StatefulWidget {
  @override
  _SudokuScreenState createState() => _SudokuScreenState();
}

class _SudokuScreenState extends State<SudokuScreen> with BuildValue<Sudoku> {
  final SudokuManager _manager = SudokuManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sudoku"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Provider.value(
              value: _manager,
              child: buildValueListenable(_manager.currentSudoku),
            ),
            Padding(padding: const EdgeInsets.only(left: 8.0, top: 8.0)),
            OperationPanel(
              manager: _manager,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildValue(BuildContext context, Sudoku sudoku) => SudokuBoardView(
        sudoku: sudoku,
      );
}
