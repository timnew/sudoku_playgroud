import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:response_builder/response_builder.dart';

import 'SudokuPos.dart';
import 'SudokuParser.dart';
import 'SudokuValue.dart';

part 'Sudoku.freezed.dart';

typedef SudokuValue CellBuilder(SudokuPos index);

@freezed
abstract class Sudoku implements _$Sudoku {
  Sudoku._();

  @Assert("cells.length == 81")
  factory Sudoku({
    BuiltMap<SudokuPos, SudokuValue> cells,
    BuiltSet<SudokuPos> conflicts,
    SudokuPos selected,
    BuiltSet<SudokuPos> highlighted,
  }) = _Sudoku;

  factory Sudoku.fromCellValues(Iterable<SudokuValue> values) => Sudoku(
        cells: BuiltMap.of(
          Map.fromIterables(SudokuPos.ALL, values),
        ),
        conflicts: BuiltSet(),
      );

  factory Sudoku.build(CellBuilder builder) => Sudoku.fromCellValues(
        SudokuPos.ALL.map((e) => builder(e)),
      );

  factory Sudoku.blank() => Sudoku.build((index) => SudokuValue.blank());

  factory Sudoku.parse(String sudokuExpression) => Sudoku(
        cells: BuiltMap.build((builder) => SudokuParser(sudokuExpression).writeTo(builder)),
        conflicts: BuiltSet(),
      );

  BuiltMap<SudokuPos, SudokuValue> _updateCell(SudokuPos index, ValueUpdater<SudokuValue> valueUpdater) =>
      cells.rebuild(
        (builder) => builder[index] = valueUpdater(builder[index]),
      );

  BuiltMap<SudokuPos, SudokuValue> _updateArea(Iterable<SudokuPos> area, ValueUpdater<SudokuValue> valueUpdater) {
    final builder = cells.toBuilder();

    area.forEach((index) {
      builder[index] = valueUpdater(builder[index]);
    });

    return builder.build();
  }

  BuiltSet<SudokuPos> _highlighted(SudokuPos index) =>
      BuiltSet.build((b) => b..addAll(index.parentRow())..addAll(index.parentColumn())..addAll(index.parentBlock()));

  BuiltSet<SudokuPos> _checkConflict(
    SudokuPos changedIndex,
    BuiltSet<SudokuPos> highlighted,
    BuiltMap<SudokuPos, SudokuValue> cells,
  ) {
    return BuiltSet(); //  TODO: Implement this
  }

  Sudoku checkConflict(SudokuPos index, ValueUpdater<SudokuValue> valueUpdater) {
    final newCells = _updateCell(index, valueUpdater);
    final highlighted = _highlighted(index);
    final newConflicts = _checkConflict(index, highlighted, newCells);

    return copyWith(
      cells: newCells,
      conflicts: newConflicts,
      selected: index,
      highlighted: highlighted,
    );
  }

  Sudoku select(SudokuPos index) => copyWith(
        selected: index,
        highlighted: _highlighted(index),
      );

  Sudoku updateCell(SudokuPos index, ValueUpdater<SudokuValue> valueUpdater) => copyWith(
        cells: _updateCell(index, valueUpdater),
        selected: index,
        highlighted: _highlighted(index),
      );

  Sudoku fullMarkBoard() => copyWith(
        cells: _updateArea(SudokuPos.ALL, (current) => current.fullMark()),
      );

  Sudoku fullMark(SudokuPos index) => updateCell(index, (current) => current.fullMark());

  Sudoku addMark(SudokuPos index, int mark) => checkConflict(index, (current) => current.addMark(mark));

  Sudoku removeMark(SudokuPos index, int mark) => updateCell(index, (current) => current.removeMark(mark));

  Sudoku guess(SudokuPos index, int number) => checkConflict(index, (current) => current.guess(number));

  Sudoku fill(SudokuPos index, int number) => checkConflict(index, (current) => current.fill(number));

  Sudoku erase(SudokuPos index) => checkConflict(index, (current) => current.erase());
}
