import 'package:flutter_test/flutter_test.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuIndex.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuArea.dart';

void main() {
  group("SudokuIndexSet", () {
    group("Row", () {
      test("it should generate all index", () {
        expect(
            SudokuArea.row(2).toList(),
            containsAllInOrder([
              SudokuIndex(2, 1),
              SudokuIndex(2, 2),
              SudokuIndex(2, 3),
              SudokuIndex(2, 4),
              SudokuIndex(2, 5),
              SudokuIndex(2, 6),
              SudokuIndex(2, 7),
              SudokuIndex(2, 8),
              SudokuIndex(2, 9),
            ]));
      });
    });

    group("Column", () {
      test("it should generate all index", () {
        expect(
            SudokuArea.column(2).toList(),
            containsAllInOrder([
              SudokuIndex(1, 2),
              SudokuIndex(2, 2),
              SudokuIndex(3, 2),
              SudokuIndex(4, 2),
              SudokuIndex(5, 2),
              SudokuIndex(6, 2),
              SudokuIndex(7, 2),
              SudokuIndex(8, 2),
              SudokuIndex(9, 2),
            ]));
      });
    });

    group("Block", () {
      test("it should generate for 1st block", () {
        expect(
            SudokuArea.block(BlockIndex(1, 1)).toList(),
            containsAllInOrder([
              SudokuIndex(1, 1),
              SudokuIndex(1, 2),
              SudokuIndex(1, 3),
              SudokuIndex(2, 1),
              SudokuIndex(2, 2),
              SudokuIndex(2, 3),
              SudokuIndex(3, 1),
              SudokuIndex(3, 2),
              SudokuIndex(3, 3),
            ]));
      });

      test("it should generate for 2nd block in 1st row", () {
        expect(
            SudokuArea.block(BlockIndex(1, 2)).toList(),
            containsAllInOrder([
              SudokuIndex(1, 4),
              SudokuIndex(1, 5),
              SudokuIndex(1, 6),
              SudokuIndex(2, 4),
              SudokuIndex(2, 5),
              SudokuIndex(2, 6),
              SudokuIndex(3, 4),
              SudokuIndex(3, 5),
              SudokuIndex(3, 6),
            ]));
      });

      test("it should generate for 2nd block in 1st column", () {
        expect(
            SudokuArea.block(BlockIndex(2, 1)).toList(),
            containsAllInOrder([
              SudokuIndex(4, 1),
              SudokuIndex(4, 2),
              SudokuIndex(4, 3),
              SudokuIndex(5, 1),
              SudokuIndex(5, 2),
              SudokuIndex(5, 3),
              SudokuIndex(6, 1),
              SudokuIndex(6, 2),
              SudokuIndex(6, 3),
            ]));
      });

      test("it should generate all index", () {
        expect(
            SudokuArea.block(BlockIndex(2, 3)).toList(),
            containsAllInOrder([
              SudokuIndex(4, 7),
              SudokuIndex(4, 8),
              SudokuIndex(4, 9),
              SudokuIndex(5, 7),
              SudokuIndex(5, 8),
              SudokuIndex(5, 9),
              SudokuIndex(6, 7),
              SudokuIndex(6, 8),
              SudokuIndex(6, 9),
            ]));
      });
    });

    group("Board", () {
      test("it should generate all index", () {
        expect(
          SudokuArea.board().toList(),
          containsAllInOrder([
            SudokuIndex(1, 1),
            SudokuIndex(1, 2),
            SudokuIndex(1, 3),
            SudokuIndex(1, 4),
            SudokuIndex(1, 5),
            SudokuIndex(1, 6),
            SudokuIndex(1, 7),
            SudokuIndex(1, 8),
            SudokuIndex(1, 9),
            //
            SudokuIndex(2, 1),
            SudokuIndex(2, 2),
            SudokuIndex(2, 3),
            SudokuIndex(2, 4),
            SudokuIndex(2, 5),
            SudokuIndex(2, 6),
            SudokuIndex(2, 7),
            SudokuIndex(2, 8),
            SudokuIndex(2, 9),
            //
            SudokuIndex(3, 1),
            SudokuIndex(3, 2),
            SudokuIndex(3, 3),
            SudokuIndex(3, 4),
            SudokuIndex(3, 5),
            SudokuIndex(3, 6),
            SudokuIndex(3, 7),
            SudokuIndex(3, 8),
            SudokuIndex(3, 9),
            //
            SudokuIndex(4, 1),
            SudokuIndex(4, 2),
            SudokuIndex(4, 3),
            SudokuIndex(4, 4),
            SudokuIndex(4, 5),
            SudokuIndex(4, 6),
            SudokuIndex(4, 7),
            SudokuIndex(4, 8),
            SudokuIndex(4, 9),
            //
            SudokuIndex(5, 1),
            SudokuIndex(5, 2),
            SudokuIndex(5, 3),
            SudokuIndex(5, 4),
            SudokuIndex(5, 5),
            SudokuIndex(5, 6),
            SudokuIndex(5, 7),
            SudokuIndex(5, 8),
            SudokuIndex(5, 9),

            //

            SudokuIndex(6, 1),
            SudokuIndex(6, 2),
            SudokuIndex(6, 3),
            SudokuIndex(6, 4),
            SudokuIndex(6, 5),
            SudokuIndex(6, 6),
            SudokuIndex(6, 7),
            SudokuIndex(6, 8),
            SudokuIndex(6, 9),
            //

            SudokuIndex(7, 1),
            SudokuIndex(7, 2),
            SudokuIndex(7, 3),
            SudokuIndex(7, 4),
            SudokuIndex(7, 5),
            SudokuIndex(7, 6),
            SudokuIndex(7, 7),
            SudokuIndex(7, 8),
            SudokuIndex(7, 9),
            //

            SudokuIndex(8, 1),
            SudokuIndex(8, 2),
            SudokuIndex(8, 3),
            SudokuIndex(8, 4),
            SudokuIndex(8, 5),
            SudokuIndex(8, 6),
            SudokuIndex(8, 7),
            SudokuIndex(8, 8),
            SudokuIndex(8, 9),
            //
            SudokuIndex(9, 1),
            SudokuIndex(9, 2),
            SudokuIndex(9, 3),
            SudokuIndex(9, 4),
            SudokuIndex(9, 5),
            SudokuIndex(9, 6),
            SudokuIndex(9, 7),
            SudokuIndex(9, 8),
            SudokuIndex(9, 9),
          ]),
        );
      });
    });
  });
}
