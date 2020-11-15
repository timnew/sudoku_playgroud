import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sudoku_playground/features/sudoku/models/actions/SudokuParser.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuPos.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuValue.dart';

void main() {
  String doFormat(Map<int, String> sudoku) {
    final result = StringBuffer();

    sudoku.forEach((index, value) {
      final posIndex = index + 1;
      if (posIndex % 9 == 0) {
        result.writeln(value);
        if (posIndex % 27 == 0)
          result.writeln(); // Extra linebreak every 3 rows
      } else {
        result.write("$value ");
        if (posIndex % 3 == 0) result.write(" "); // Extra space every 3 cols
      }
    });

    return result.toString();
  }

  String stringify(List<SudokuValue> input) => doFormat(
        Map.fromIterable(
          SudokuPos.ALL,
          key: (pos) => pos.pos,
          value: (pos) => input[pos].maybeMap(
            given: (v) => "${v.number}",
            blank: (_) => "_",
            orElse: () => "!",
          ),
        ),
      );

  String reformat(String input) => doFormat(
        RegExp("[1-9_]")
            .allMatches(input) // Clean the text
            .map((e) => e.group(0)) // Extract the matched char
            .toList()
            .asMap(), // paired with index
      );

  void testPattern(String name,
      {@required String input, @required String expected}) {
    test(name, () {
      final parsed = SudokuParser(input).parseAsMap();
      final converted = stringify(parsed);

      expect(converted, reformat(expected));
    });
  }

  void testBadPattern(String name,
      {@required String input, bool expectError: true}) {
    test(name, () {
      expect(() => SudokuParser(input).parseAsMap(),
          expectError ? throwsFormatException : returnsNormally);
    });
  }

  // testPattern(
  //   "",
  //   input: "",
  //   expected: """
  //   _ _ _  _ _ _  _ _ _
  //   _ _ _  _ _ _  _ _ _
  //   _ _ _  _ _ _  _ _ _
  //
  //   _ _ _  _ _ _  _ _ _
  //   _ _ _  _ _ _  _ _ _
  //   _ _ _  _ _ _  _ _ _
  //
  //   _ _ _  _ _ _  _ _ _
  //   _ _ _  _ _ _  _ _ _
  //   _ _ _  _ _ _  _ _ _
  //   """,
  // );

  group("SudokuParser", () {
    group("basic case", () {
      testPattern(
        "simplest case",
        input: "+12+222++",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ _ _  _ 2 _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "empty block",
        input: "+22#+",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "allow space or other space",
        input: "+ \t\n+",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );
    });

    group("Positioned Block", () {
      testPattern(
        "no block",
        input: "++",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "positioned 1st block",
        input: "+11+222++",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ 2 _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "positioned end of row",
        input: "+13+222++",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ 2 _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "positioned end of col",
        input: "+31+222++",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ 2 _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "positioned last block",
        input: "+33+222++",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ 2 _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "positioned 2 blocks in reversed order",
        input: "+33+222+11+222++",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ 2 _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ 2 _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testBadPattern(
        "complains duplicated block",
        input: "+11+222+11+111++",
      );

      testBadPattern(
        "missing tailing +",
        input: "+11+222+",
      );
    });

    group("Row block", () {
      testPattern(
        "row block",
        input: "- +221+## ##+222+ #+223+# -",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ 1 _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ 2 _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ 3 _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testBadPattern(
        "less than 9 blocks",
        input: "- ### ### ## -",
      );

      testBadPattern(
        "more than 9 blocks",
        input: "- ### ### ### # -",
      );

      testBadPattern(
        "missing tailing -",
        input: "- ### ### ###",
      );
    });

    group("Column block", () {
      testPattern(
        "column block",
        input: "| +221+## ##+222+ #+223+# |",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ 1 _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ 3 _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ 2 _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testBadPattern(
        "less than 9 blocks",
        input: "| ### ### ## |",
      );

      testBadPattern(
        "more than 9 blocks",
        input: "| ### ### ### # |",
      );

      testBadPattern(
        "missing tailing |",
        input: "| ### ### ###",
      );
    });

    group("block by positioned", () {
      testPattern(
        "1st cell",
        input: "+11+111++",
        expected: """
        1 _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "end of row",
        input: "+11+131++",
        expected: """
        _ _ 1  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "end of col",
        input: "+11+311++",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        1 _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "last cell",
        input: "+11+331++",
        expected: """
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ 1  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "multiple cell",
        input: "+11+ 331 113++",
        expected: """
        3 _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ 1  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testBadPattern("complains duplicated cell", input: "+11 +222 222+ +");

      testBadPattern("complains missing tailing +", input: "+11 +222 222 +");
    });

    group("block by row", () {
      testPattern(
        "layout digit by row",
        input: "+11-123456789-+",
        expected: """
        1 2 3  _ _ _  _ _ _
        4 5 6  _ _ _  _ _ _
        7 8 9  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "allow blanks",
        input: "+11-1_3=_8_-+",
        expected: """
        1 _ 3  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ 8 _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testBadPattern(
        "complains less than 9 notes",
        input: "+11-12345678-+",
      );

      testBadPattern(
        "complains more than 9 notes",
        input: "+11-123456789_-+",
      );

      testBadPattern(
        "complains missing tailing -",
        input: "+11-123456789+",
      );
    });

    group("block by column", () {
      testPattern(
        "layout digit by row",
        input: "+11|123456789|+",
        expected: """
        1 4 7  _ _ _  _ _ _
        2 5 8  _ _ _  _ _ _
        3 6 9  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testPattern(
        "allow blanks",
        input: "+11|1_3=_8_|+",
        expected: """
        1 _ _  _ _ _  _ _ _
        _ _ 8  _ _ _  _ _ _
        3 _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testBadPattern(
        "complains less than 9 notes",
        input: "+11|12345678|+",
      );

      testBadPattern(
        "complains more than 9 notes",
        input: "+11|123456789_|+",
      );

      testBadPattern(
        "complains missing tailing -",
        input: "+11|123456789+",
      );
    });

    group("explicit notion", () {
      testPattern(
        "start with digit",
        input: """
        1 2 3  _ _ _  _ _ _
        _ _ _  4 5 6  _ _ _
        _ _ _  _ _ _  7 8 9

        1 _ _  _ 4 _  _ _ 7
        2 _ _  _ 5 _  _ _ 8
        3 _ _  _ 6 _  _ _ 9

        1 _ _  4 _ _  7 _ _
        _ 2 _  _ 5 _  _ 8 _
        _ _ 3  _ _ 6  _ _ 9
        """,
        expected: """
        1 2 3  _ _ _  _ _ _
        _ _ _  4 5 6  _ _ _
        _ _ _  _ _ _  7 8 9

        1 _ _  _ 4 _  _ _ 7
        2 _ _  _ 5 _  _ _ 8
        3 _ _  _ 6 _  _ _ 9

        1 _ _  4 _ _  7 _ _
        _ 2 _  _ 5 _  _ 8 _
        _ _ 3  _ _ 6  _ _ 9
        """,
      );

      testPattern(
        "start with empty",
        input: """
        _ 2 3  _ _ _  _ _ _
        _ _ _  4 5 6  _ _ _
        _ _ _  _ _ _  7 8 9

        1 _ _  _ 4 _  _ _ 7
        2 _ _  _ 5 _  _ _ 8
        3 _ _  _ 6 _  _ _ 9

        1 _ _  4 _ _  7 _ _
        _ 2 _  _ 5 _  _ 8 _
        _ _ 3  _ _ 6  _ _ 9
        """,
        expected: """
         _ 2 3  _ _ _  _ _ _
        _ _ _  4 5 6  _ _ _
        _ _ _  _ _ _  7 8 9

        1 _ _  _ 4 _  _ _ 7
        2 _ _  _ 5 _  _ _ 8
        3 _ _  _ 6 _  _ _ 9

        1 _ _  4 _ _  7 _ _
        _ 2 _  _ 5 _  _ 8 _
        _ _ 3  _ _ 6  _ _ 9
        """,
      );

      testBadPattern(
        "Only allow digit or _",
        input: """
        1 _ _  = _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """,
      );

      testBadPattern(
        "complains more cells",
        input: """
        1 _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _ _
        """,
      );

      testBadPattern(
        "complains less cells",
        input: """
        1 _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _

        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _
        """,
      );
    });
  });
}
