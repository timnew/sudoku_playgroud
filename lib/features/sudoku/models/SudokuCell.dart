import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'SudokuIndex.dart';
import 'SudokuValue.dart';

part 'SudokuCell.freezed.dart';

@freezed
abstract class SudokuCell implements _$SudokuCell {
  SudokuCell._();

  factory SudokuCell(
    SudokuValue value, {
    @nullable BuiltSet<SudokuIndex> conflicts,
  }) = _SudokuCell;

  factory SudokuCell.blank() => SudokuCell(SudokuValue.blank());

  factory SudokuCell.given(int number) => SudokuCell(SudokuValue.given(number));

  bool get hasConflict => conflicts != null;
}
