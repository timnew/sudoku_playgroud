import 'package:flutter_test/flutter_test.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuParser.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuPos.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuValue.dart';

void main() {
  String doFormat(Map<int, String> sudoku) {
    final result = StringBuffer();

    sudoku.forEach((index, value) {
      final posIndex = index + 1;
      if (posIndex % 9 == 0) {
        result.writeln(value);
        if (posIndex % 27 == 0) result.writeln(); // Extra linebreak every 3 rows
      } else {
        result.write("$value ");
        if (posIndex % 3 == 0) result.write(" "); // Extra space every 3 cols
      }
    });

    return result.toString();
  }

  String stringify(Map<SudokuPos, SudokuValue> input) => doFormat(
        Map.fromIterable(
          SudokuPos.ALL,
          key: (pos) => pos.index,
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

  void checkParse(String input, String expected) {
    final parsed = SudokuParser(input).parseAsMap();
    final converted = stringify(parsed);

    expect(converted, reformat(expected));
  }

  // final empty = """
  // _ _ _  _ _ _  _ _ _
  // _ _ _  _ _ _  _ _ _
  // _ _ _  _ _ _  _ _ _
  //
  // _ _ _  _ _ _  _ _ _
  // _ _ _  _ _ _  _ _ _
  // _ _ _  _ _ _  _ _ _
  //
  // _ _ _  _ _ _  _ _ _
  // _ _ _  _ _ _  _ _ _
  // _ _ _  _ _ _  _ _ _
  // """;

  group("SudokuParser", () {
    group("Positioned Group", () {
      test("", () {
        checkParse("+11+111++", """
        1 _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
      
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
      
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        _ _ _  _ _ _  _ _ _
        """);
      });
    });
  });
}
