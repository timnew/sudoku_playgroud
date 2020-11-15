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

  @Assert("0 < number && number <= 9")
  factory SudokuValue.given(int number) = GivenValue;

  @Assert("0 < number && number <= 9")
  factory SudokuValue.filled(int number) = FilledValue;

  @Assert("marks != null")
  @Assert("marks.length == 9")
  factory SudokuValue.guessing(BuiltList<bool> marks) = GuessingValue;

  SudokuValueType get type => map(
        blank: (_) => SudokuValueType.Blank,
        given: (_) => SudokuValueType.Given,
        filled: (_) => SudokuValueType.Filled,
        guessing: (_) => SudokuValueType.Guessing,
      );

  static BuiltList<bool> EMPTY_MARKS =
      BuiltList<bool>.of(Iterable.generate(9, (_) => false));
  static BuiltList<bool> FULL_MARKS =
      BuiltList<bool>.of(Iterable.generate(9, (_) => true));

  SudokuValue fullMark() => maybeMap(
        blank: (_) => SudokuValue.guessing(FULL_MARKS),
        orElse: () => this,
      );

  SudokuValue clearMarks() => maybeMap(
        guessing: (v) => v.copyWith(marks: EMPTY_MARKS),
        orElse: () => this,
      );

  SudokuValue addMark(int mark) => maybeMap(
        blank: (_) => SudokuValue.guessing(EMPTY_MARKS.addMark(mark)),
        guessing: (v) => v.copyWith(marks: v.marks.addMark(mark)),
        orElse: () => this,
      );

  SudokuValue removeMark(int mark) => maybeMap(
        guessing: (v) => v.copyWith(marks: v.marks.removeMark(mark)),
        orElse: () => this,
      );

  SudokuValue toggleMark(int mark) => maybeMap(
        blank: (_) => SudokuValue.guessing(EMPTY_MARKS.addMark(mark)),
        guessing: (v) => v.copyWith(marks: v.marks.toggleMark(mark)),
        orElse: () => this,
      );

  SudokuValue fill(int number) => maybeMap(
        blank: (_) => SudokuValue.filled(number),
        guessing: (_) => SudokuValue.filled(number),
        filled: (_) => SudokuValue.filled(number),
        orElse: () => this,
      );

  SudokuValue erase() => maybeMap(
        guessing: (v) => SudokuValue.blank(),
        filled: (_) => SudokuValue.blank(),
        orElse: () => this,
      );
}

extension MarkManipulations on BuiltList<bool> {
  BuiltList<bool> addMark(int mark) => rebuild(
        (b) => b[mark - 1] = true,
      );

  BuiltList<bool> removeMark(int mark) => rebuild(
        (b) => b[mark - 1] = false,
      );

  BuiltList<bool> toggleMark(int mark) => rebuild(
        (b) => b[mark - 1] = !b[mark - 1],
      );

  bool isMarked(int mark) => this[mark - 1];
}
