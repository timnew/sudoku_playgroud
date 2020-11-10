import 'package:flutter_test/flutter_test.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuValue.dart';

void main() {
  group("SudokuCell", () {});

  group("Marks", () {
    group("addMark", () {
      test("add mark", () {
        final marks = SudokuValue.EMPTY_MARKS.addMark(2);

        expect(marks.isMarked(1), false);
        expect(marks.isMarked(2), true);
        expect(marks.isMarked(3), false);
        expect(marks.isMarked(4), false);
        expect(marks.isMarked(5), false);
        expect(marks.isMarked(6), false);
        expect(marks.isMarked(7), false);
        expect(marks.isMarked(8), false);
        expect(marks.isMarked(9), false);
      });

      test("override mark", () {
        final marks = SudokuValue.FULL_MARKS.addMark(2);

        expect(marks.isMarked(1), true);
        expect(marks.isMarked(2), true);
        expect(marks.isMarked(3), true);
        expect(marks.isMarked(4), true);
        expect(marks.isMarked(5), true);
        expect(marks.isMarked(6), true);
        expect(marks.isMarked(7), true);
        expect(marks.isMarked(8), true);
        expect(marks.isMarked(9), true);
      });

      test("check index", () {
        expect(() => SudokuValue.EMPTY_MARKS.addMark(0), throwsRangeError);
      });
    });

    group("removeMark", () {
      test("remove mark", () {
        final marks = SudokuValue.FULL_MARKS.removeMark(2);

        expect(marks.isMarked(1), true);
        expect(marks.isMarked(2), false);
        expect(marks.isMarked(3), true);
        expect(marks.isMarked(4), true);
        expect(marks.isMarked(5), true);
        expect(marks.isMarked(6), true);
        expect(marks.isMarked(7), true);
        expect(marks.isMarked(8), true);
        expect(marks.isMarked(9), true);
      });

      test("override mark", () {
        final marks = SudokuValue.EMPTY_MARKS.removeMark(2);

        expect(marks.isMarked(1), false);
        expect(marks.isMarked(2), false);
        expect(marks.isMarked(3), false);
        expect(marks.isMarked(4), false);
        expect(marks.isMarked(5), false);
        expect(marks.isMarked(6), false);
        expect(marks.isMarked(7), false);
        expect(marks.isMarked(8), false);
        expect(marks.isMarked(9), false);
      });

      test("check index", () {
        expect(() => SudokuValue.FULL_MARKS.removeMark(0), throwsRangeError);
      });
    });
  });
}
