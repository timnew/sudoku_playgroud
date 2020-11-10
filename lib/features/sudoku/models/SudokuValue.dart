import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'SudokuValue.freezed.dart';

enum SudokuValueType { Blank, Given, Filled, Guessing }

@freezed
abstract class SudokuValue implements _$SudokuValue {
  int get number => null;

  BuiltList<bool> get marks => null;

  SudokuValue._();

  factory SudokuValue.blank() = BlankValue;

  factory SudokuValue.given(int number) = GivenValue;

  factory SudokuValue.filled(int number) = FilledValue;

  factory SudokuValue.guessing(int number, BuiltList<bool> marks) = GuessingValue;

  SudokuValueType get type => map(
        blank: (_) => SudokuValueType.Blank,
        given: (_) => SudokuValueType.Given,
        filled: (_) => SudokuValueType.Filled,
        guessing: (_) => SudokuValueType.Guessing,
      );

  static BuiltList<bool> EMPTY_MARKS = BuiltList<bool>.of(Iterable.generate(9, (_) => false));
  static BuiltList<bool> FULL_MARKS = BuiltList<bool>.of(Iterable.generate(9, (_) => true));

  SudokuValue fullMark() => maybeMap(
    blank: (_) => SudokuValue.guessing(null, FULL_MARKS),
    guessing: (v) => v.copyWith(marks: FULL_MARKS),
    orElse: () => this,
  );

  SudokuValue addMark(int mark) => maybeMap(
    blank: (_) => SudokuValue.guessing(null, EMPTY_MARKS.addMark(mark)),
    guessing: (v) => v.copyWith(marks: v.marks.addMark(mark)),
    orElse: () => this,
  );

  SudokuValue removeMark(int mark) => maybeMap(
    guessing: (v) => v.copyWith(marks: v.marks.removeMark(mark)),
    orElse: () => this,
  );

  SudokuValue guess(int number) => maybeMap(
    blank: (_) => SudokuValue.guessing(number, EMPTY_MARKS),
    guessing: (v) => v.copyWith(number: number),
    orElse: () => this,
  );

  SudokuValue fill(int number) => maybeMap(
    blank: (_) => SudokuValue.filled(number),
    guessing: (_) => SudokuValue.filled(number),
    filled: (_) => SudokuValue.filled(number),
    orElse: () => this,
  );

  SudokuValue erase() => maybeMap(
    guessing: (v) => v.copyWith(number: null),
    filled: (_) => SudokuValue.blank(),
    orElse: () => this,
  );
}

extension MarkManipulations on BuiltList<bool> {
  BuiltList<bool> addMark(int mark) => rebuild((b) => b[mark - 1] = true);

  BuiltList<bool> removeMark(int mark) => rebuild((b) => b[mark - 1] = false);

  bool isMarked(int mark) => this[mark - 1];
}
