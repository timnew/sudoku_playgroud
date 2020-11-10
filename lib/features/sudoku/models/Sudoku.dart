import 'package:built_collection/built_collection.dart';
import 'package:response_builder/response_builder.dart';
import 'package:sudoku_playground/features/sudoku/models/SudokuAreas.dart';

import 'SudokuValue.dart';
import 'SudokuIndex.dart';

typedef SudokuValue ValueBuilder(SudokuIndex index);

class Sudoku extends ResultNotifier<BuiltMap<SudokuIndex, SudokuValue>> {
  factory Sudoku.fromValues(Iterable<SudokuValue> values) => Sudoku._(
        BuiltMap.of(
          Map.fromIterables(SudokuArea.whole(), values),
        ),
      );

  factory Sudoku.build(ValueBuilder builder) => Sudoku.fromValues(
        SudokuArea.whole().map((e) => builder(e)),
      );

  factory Sudoku.blank() => Sudoku.build(
        (index) => SudokuValue.blank(),
      );

  Sudoku._(BuiltMap<SudokuIndex, SudokuValue> values) : super(verifyBoard(values));

  static BuiltMap<SudokuIndex, SudokuValue> verifyBoard(BuiltMap<SudokuIndex, SudokuValue> values) {
    // Check cell count should be sufficient, because:
    // SudokuIndex ensures the index should be valid, the maximum non-duplicated combinations is 81
    // BuiltMap ensures all the index are unique
    assert(values.length == 81);

    return values;
  }

  SudokuValue updateCell(SudokuIndex index, ValueUpdater<SudokuValue> valueUpdater) {
    final newValue = valueUpdater(value[index]);

    updateValue((current) => current.rebuild((b) => b[index] = newValue));

    return newValue;
  }

  void updateArea(SudokuArea area, ValueUpdater<SudokuValue> valueUpdater) {
    final builder = value.toBuilder();

    area.forEach((index) {
      builder[index] = valueUpdater(builder[index]);
    });

    putValue(builder.build());
  }

  void fullMarkBoard() => updateArea(SudokuArea.whole(), (current) => current.fullMark());

  SudokuValue fullMark(SudokuIndex index) => updateCell(index, (current) => current.fullMark());

  SudokuValue addMark(SudokuIndex index, int mark) => updateCell(index, (current) => current.addMark(mark));

  SudokuValue removeMark(SudokuIndex index, int mark) => updateCell(index, (current) => current.removeMark(mark));

  SudokuValue guess(SudokuIndex index, int number) => updateCell(index, (current) => current.guess(number));

  SudokuValue fill(SudokuIndex index, int number) => updateCell(index, (current) => current.fill(number));

  SudokuValue erase(SudokuIndex index) => updateCell(index, (current) => current.erase());
}
