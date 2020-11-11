import 'package:flutter_test/flutter_test.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuIndex.dart';

void main() {
  group("SudokuIndex", () {
    test("it check row", () {
      expect(() => SudokuIndex(0, 1), throwsAssertionError);
      expect(() => SudokuIndex(10, 1), throwsAssertionError);
    });

    test("it check column", () {
      expect(() => SudokuIndex(1, 0), throwsAssertionError);
      expect(() => SudokuIndex(1, 10), throwsAssertionError);
    });

    test("it has index", () {
      expect(SudokuIndex(1, 1).index, 0);
      expect(SudokuIndex(9, 9).index, 80);
      expect(SudokuIndex(2, 2).index, 10);
    });

    test("it has block index", () {
      expect(SudokuIndex(1, 1).blockIndex, 0);
      expect(SudokuIndex(9, 9).blockIndex, 8);
      expect(SudokuIndex(4, 2).blockIndex, 3);
    });
  });
}
