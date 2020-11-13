import 'package:flutter_test/flutter_test.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuPos.dart';

void main() {
  group("SudokuPos", () {
    group("creation", () {
      test("it check row", () {
        expect(() => SudokuPos(-1, 1), throwsAssertionError);
        expect(() => SudokuPos(9, 1), throwsAssertionError);
      });

      test("it check column", () {
        expect(() => SudokuPos(1, -1), throwsAssertionError);
        expect(() => SudokuPos(1, 9), throwsAssertionError);
      });
    });

    group("convert between index", () {
      test("create from index", () {
        expect(SudokuPos.index(0), SudokuPos(0, 0));
        expect(SudokuPos.index(80), SudokuPos(8, 8));
        expect(SudokuPos.index(10), SudokuPos(1, 1));
      });

      test("convert to index", () {
        expect(SudokuPos(0, 0).index, 0);
        expect(SudokuPos(8, 8).index, 80);
        expect(SudokuPos(1, 1).index, 10);
      });
    });

    group("find block index", () {
      test("it get block index", () {
        expect(SudokuPos(0, 0).blockPos.index, 0);
        expect(SudokuPos(8, 8).blockPos.index, 8);
        expect(SudokuPos(3, 1).blockPos.index, 3);
      });
    });

    group("area", () {
      final pos = SudokuPos(2, 2);

      test("parent row", () {
        expect(
          pos.parentRow().toList(),
          containsAllInOrder([
            SudokuPos(2, 0),
            SudokuPos(2, 1),
            SudokuPos(2, 2),
            SudokuPos(2, 3),
            SudokuPos(2, 4),
            SudokuPos(2, 5),
            SudokuPos(2, 6),
            SudokuPos(2, 7),
            SudokuPos(2, 8),
          ]),
        );
      });

      test("parent column", () {
        expect(
          pos.parentColumn().toList(),
          containsAllInOrder([
            SudokuPos(0, 2),
            SudokuPos(1, 2),
            SudokuPos(2, 2),
            SudokuPos(3, 2),
            SudokuPos(4, 2),
            SudokuPos(5, 2),
            SudokuPos(6, 2),
            SudokuPos(7, 2),
            SudokuPos(8, 2),
          ]),
        );
      });

      test("parent block", () {
        expect(
          pos.parentBlock().toList(),
          containsAllInOrder([
            SudokuPos(0, 0),
            SudokuPos(0, 1),
            SudokuPos(0, 2),
            SudokuPos(1, 0),
            SudokuPos(1, 1),
            SudokuPos(1, 2),
            SudokuPos(2, 0),
            SudokuPos(2, 1),
            SudokuPos(2, 2),
          ]),
        );
      });
    });
  });

  group("SudokuSubPos", () {
    group("creation", () {
      test("it check row", () {
        expect(() => SudokuSubPos(-1, 1), throwsAssertionError);
        expect(() => SudokuSubPos(3, 1), throwsAssertionError);
      });

      test("it check column", () {
        expect(() => SudokuSubPos(1, -1), throwsAssertionError);
        expect(() => SudokuSubPos(1, 3), throwsAssertionError);
      });
    });

    group("convert between index", () {
      test("create from index", () {
        expect(SudokuSubPos.index(0), SudokuSubPos(0, 0));
        expect(SudokuSubPos.index(8), SudokuSubPos(2, 2));
        expect(SudokuSubPos.index(4), SudokuSubPos(1, 1));
      });

      test("convert to index", () {
        expect(SudokuSubPos(0, 0).index, 0);
        expect(SudokuSubPos(2, 2).index, 8);
        expect(SudokuSubPos(1, 1).index, 4);
      });
    });

    group("convert to child pos", () {
      final block = SudokuSubPos(1, 1);
      test("by index", () {
        expect(block + 0, SudokuPos(3, 3));
        expect(block + 8, SudokuPos(5, 5));
      });

      test("by subPos", () {
        expect(block * SudokuSubPos(0, 0), SudokuPos(3, 3));
        expect(block * SudokuSubPos(2, 2), SudokuPos(5, 5));
      });
    });

    group("iteration", () {
      test("by row", () {
        expect(
          SudokuSubPos.ALL_BY_ROW,
          containsAllInOrder([
            SudokuSubPos(0, 0),
            SudokuSubPos(0, 1),
            SudokuSubPos(0, 2),
            SudokuSubPos(1, 0),
            SudokuSubPos(1, 1),
            SudokuSubPos(1, 2),
            SudokuSubPos(2, 0),
            SudokuSubPos(2, 1),
            SudokuSubPos(2, 2),
          ]),
        );
      });

      test("by column", () {
        expect(
          SudokuSubPos.ALL_BY_COLUMN,
          containsAllInOrder([
            SudokuSubPos(0, 0),
            SudokuSubPos(1, 0),
            SudokuSubPos(2, 0),
            SudokuSubPos(0, 1),
            SudokuSubPos(1, 1),
            SudokuSubPos(2, 1),
            SudokuSubPos(0, 2),
            SudokuSubPos(1, 2),
            SudokuSubPos(2, 2),
          ]),
        );
      });
    });
  });
}
