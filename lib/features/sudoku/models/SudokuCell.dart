import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'SudokuCell.freezed.dart';

enum SudokuCellType { Blank, Given, Filled, Guessing }

@freezed
abstract class SudokuCell implements _$SudokuCell {
  int get number => null;

  BuiltList<bool> get marks => null;

  bool get isConflict => false;

  SudokuCell._();

  factory SudokuCell.blank() = BlankCell;

  factory SudokuCell.given(int number, {@Default(false) bool isConflict}) = GivenCell;

  factory SudokuCell.filled(int number, {@Default(false) bool isConflict}) = FilledCell;

  factory SudokuCell.guessing(int number, BuiltList<bool> marks, {@Default(false) bool isConflict}) = GuessingCell;

  SudokuCellType get type => map(
        blank: (_) => SudokuCellType.Blank,
        given: (_) => SudokuCellType.Given,
        filled: (_) => SudokuCellType.Filled,
        guessed: (_) => SudokuCellType.Guessing,
      );

  SudokuCell fullMark() => maybeMap(
        blank: (_) => SudokuCell.guessing(null, FULL_MARKS),
        guessed: (guessed) => guessed.copyWith(marks: FULL_MARKS),
        orElse: () => this,
      );

  SudokuCell addMark(int mark) => maybeMap(
        blank: (_) => SudokuCell.guessing(null, EMPTY_MARKS.addMark(mark)),
        guessed: (guessed) => guessed.copyWith(marks: guessed.marks.addMark(mark)),
        orElse: () => this,
      );

  SudokuCell removeMark(int mark) => maybeMap(
        guessed: (guessed) => guessed.copyWith(marks: guessed.marks.removeMark(mark)),
        orElse: () => this,
      );

  SudokuCell guess(int number) => maybeMap(
        blank: (_) => SudokuCell.guessing(number, EMPTY_MARKS),
        guessed: (guessed) => guessed.copyWith(number: number),
        orElse: () => this,
      );

  SudokuCell fill(int number) => maybeMap(
        blank: (_) => SudokuCell.filled(number),
        guessed: (_) => SudokuCell.filled(number),
        filled: (_) => SudokuCell.filled(number),
        orElse: () => this,
      );

  SudokuCell erase() => maybeMap(
        guessed: (c) => c.copyWith(number: null),
        filled: (_) => SudokuCell.blank(),
        orElse: () => this,
      );

  SudokuCell updateIsConflict(bool value) {
    if (value == isConflict) return this;

    return maybeMap(
      given: (c) => c.copyWith(isConflict: value),
      filled: (c) => c.copyWith(isConflict: value),
      guessed: (c) => c.copyWith(isConflict: value),
      orElse: () => this,
    );
  }

  static BuiltList<bool> EMPTY_MARKS = BuiltList<bool>.of(Iterable.generate(9, (_) => false));
  static BuiltList<bool> FULL_MARKS = BuiltList<bool>.of(Iterable.generate(9, (_) => true));
}

extension MarkManipulations on BuiltList<bool> {
  BuiltList<bool> addMark(int mark) => rebuild((b) => b[mark - 1] = true);

  BuiltList<bool> removeMark(int mark) => rebuild((b) => b[mark - 1] = false);

  bool isMarked(int mark) => this[mark - 1];
}
