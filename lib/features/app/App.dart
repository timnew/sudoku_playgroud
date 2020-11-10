import 'package:flutter/material.dart';
import 'package:sudoku_playground/features/sudoku_board/SudokuBoardScreen.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sudoku Playground',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SudokuBoardScreen(),
    );
  }
}
