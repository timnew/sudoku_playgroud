import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:response_builder/response_builder.dart';

import 'SudokuArea.dart';
import 'SudokuIndex.dart';
import 'SudokuParser.dart';
import 'SudokuValue.dart';

part 'Sudoku.freezed.dart';

typedef SudokuValue CellBuilder(SudokuIndex index);

@freezed
abstract class Sudoku implements _$Sudoku {
  Sudoku._();

  @Assert("cells.length == 81")
  factory Sudoku({
    BuiltMap<SudokuIndex, SudokuValue> cells,
    BuiltSet<SudokuIndex> conflicts,
    SudokuIndex selected,
    BuiltSet<SudokuIndex> highlighted,
  }) = _Sudoku;

  factory Sudoku.fromCellValues(Iterable<SudokuValue> values) => Sudoku(
        cells: BuiltMap.of(
          Map.fromIterables(SudokuArea.whole(), values),
        ),
        conflicts: BuiltSet(),
      );

  factory Sudoku.build(CellBuilder builder) => Sudoku.fromCellValues(
        SudokuArea.whole().map((e) => builder(e)),
      );

  factory Sudoku.blank() => Sudoku.build((index) => SudokuValue.blank());

  factory Sudoku.parse(String sudokuExpression) => Sudoku(
        cells: BuiltMap.build((builder) => SudokuParser(sudokuExpression).writeTo(builder)),
        conflicts: BuiltSet(),
      );

  BuiltMap<SudokuIndex, SudokuValue> _updateCell(SudokuIndex index, ValueUpdater<SudokuValue> valueUpdater) =>
      cells.rebuild(
        (builder) => builder[index] = valueUpdater(builder[index]),
      );

  BuiltMap<SudokuIndex, SudokuValue> _updateArea(SudokuArea area, ValueUpdater<SudokuValue> valueUpdater) {
    final builder = cells.toBuilder();

    area.forEach((index) {
      builder[index] = valueUpdater(builder[index]);
    });

    return builder.build();
  }

  BuiltSet<SudokuIndex> _highlighted(SudokuIndex index) =>
      BuiltSet.build((b) => b..addAll(index.parentRow)..addAll(index.parentColumn)..addAll(index.parentBlock));

  BuiltSet<SudokuIndex> _checkConflict(
    SudokuIndex changedIndex,
    BuiltSet<SudokuIndex> highlighted,
    BuiltMap<SudokuIndex, SudokuValue> cells,
  ) {
    return BuiltSet(); //  TODO: Implement this
  }

  Sudoku checkConflict(SudokuIndex index, ValueUpdater<SudokuValue> valueUpdater) {
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

  Sudoku select(SudokuIndex index) => copyWith(
        selected: index,
        highlighted: _highlighted(index),
      );

  Sudoku updateCell(SudokuIndex index, ValueUpdater<SudokuValue> valueUpdater) => copyWith(
        cells: _updateCell(index, valueUpdater),
        selected: index,
        highlighted: _highlighted(index),
      );

  Sudoku fullMarkBoard() => copyWith(
        cells: _updateArea(SudokuArea.whole(), (current) => current.fullMark()),
      );

  Sudoku fullMark(SudokuIndex index) => updateCell(index, (current) => current.fullMark());

  Sudoku addMark(SudokuIndex index, int mark) => checkConflict(index, (current) => current.addMark(mark));

  Sudoku removeMark(SudokuIndex index, int mark) => updateCell(index, (current) => current.removeMark(mark));

  Sudoku guess(SudokuIndex index, int number) => checkConflict(index, (current) => current.guess(number));

  Sudoku fill(SudokuIndex index, int number) => checkConflict(index, (current) => current.fill(number));

  Sudoku erase(SudokuIndex index) => checkConflict(index, (current) => current.erase());
}
