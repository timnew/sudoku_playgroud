// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'SudokuCell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SudokuCellTearOff {
  const _$SudokuCellTearOff();

// ignore: unused_element
  BlankCell blank() {
    return BlankCell();
  }

// ignore: unused_element
  GivenCell given(int number, {bool isConflict = false}) {
    return GivenCell(
      number,
      isConflict: isConflict,
    );
  }

// ignore: unused_element
  FilledCell filled(int number, {bool isConflict = false}) {
    return FilledCell(
      number,
      isConflict: isConflict,
    );
  }

// ignore: unused_element
  GuessingCell guessed(int number, BuiltList<bool> marks,
      {bool isConflict = false}) {
    return GuessingCell(
      number,
      marks,
      isConflict: isConflict,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SudokuCell = _$SudokuCellTearOff();

/// @nodoc
mixin _$SudokuCell {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number, bool isConflict),
    @required Result filled(int number, bool isConflict),
    @required
        Result guessed(int number, BuiltList<bool> marks, bool isConflict),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number, bool isConflict),
    Result filled(int number, bool isConflict),
    Result guessed(int number, BuiltList<bool> marks, bool isConflict),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(BlankCell value),
    @required Result given(GivenCell value),
    @required Result filled(FilledCell value),
    @required Result guessed(GuessingCell value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankCell value),
    Result given(GivenCell value),
    Result filled(FilledCell value),
    Result guessed(GuessingCell value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SudokuCellCopyWith<$Res> {
  factory $SudokuCellCopyWith(
          SudokuCell value, $Res Function(SudokuCell) then) =
      _$SudokuCellCopyWithImpl<$Res>;
}

/// @nodoc
class _$SudokuCellCopyWithImpl<$Res> implements $SudokuCellCopyWith<$Res> {
  _$SudokuCellCopyWithImpl(this._value, this._then);

  final SudokuCell _value;
  // ignore: unused_field
  final $Res Function(SudokuCell) _then;
}

/// @nodoc
abstract class $BlankCellCopyWith<$Res> {
  factory $BlankCellCopyWith(BlankCell value, $Res Function(BlankCell) then) =
      _$BlankCellCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlankCellCopyWithImpl<$Res> extends _$SudokuCellCopyWithImpl<$Res>
    implements $BlankCellCopyWith<$Res> {
  _$BlankCellCopyWithImpl(BlankCell _value, $Res Function(BlankCell) _then)
      : super(_value, (v) => _then(v as BlankCell));

  @override
  BlankCell get _value => super._value as BlankCell;
}

@With(_BlankCellImpl)

/// @nodoc
class _$BlankCell extends BlankCell with _BlankCellImpl {
  _$BlankCell() : super._();

  @override
  String toString() {
    return 'SudokuCell.blank()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BlankCell);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number, bool isConflict),
    @required Result filled(int number, bool isConflict),
    @required
        Result guessed(int number, BuiltList<bool> marks, bool isConflict),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessed != null);
    return blank();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number, bool isConflict),
    Result filled(int number, bool isConflict),
    Result guessed(int number, BuiltList<bool> marks, bool isConflict),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blank != null) {
      return blank();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(BlankCell value),
    @required Result given(GivenCell value),
    @required Result filled(FilledCell value),
    @required Result guessed(GuessingCell value),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessed != null);
    return blank(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankCell value),
    Result given(GivenCell value),
    Result filled(FilledCell value),
    Result guessed(GuessingCell value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blank != null) {
      return blank(this);
    }
    return orElse();
  }
}

abstract class BlankCell extends SudokuCell implements _BlankCellImpl {
  BlankCell._() : super._();
  factory BlankCell() = _$BlankCell;
}

/// @nodoc
abstract class $GivenCellCopyWith<$Res> {
  factory $GivenCellCopyWith(GivenCell value, $Res Function(GivenCell) then) =
      _$GivenCellCopyWithImpl<$Res>;
  $Res call({int number, bool isConflict});
}

/// @nodoc
class _$GivenCellCopyWithImpl<$Res> extends _$SudokuCellCopyWithImpl<$Res>
    implements $GivenCellCopyWith<$Res> {
  _$GivenCellCopyWithImpl(GivenCell _value, $Res Function(GivenCell) _then)
      : super(_value, (v) => _then(v as GivenCell));

  @override
  GivenCell get _value => super._value as GivenCell;

  @override
  $Res call({
    Object number = freezed,
    Object isConflict = freezed,
  }) {
    return _then(GivenCell(
      number == freezed ? _value.number : number as int,
      isConflict:
          isConflict == freezed ? _value.isConflict : isConflict as bool,
    ));
  }
}

@With(_GivenCellImpl)

/// @nodoc
class _$GivenCell extends GivenCell with _GivenCellImpl {
  _$GivenCell(this.number, {this.isConflict = false})
      : assert(number != null),
        assert(isConflict != null),
        super._();

  @override
  final int number;
  @JsonKey(defaultValue: false)
  @override
  final bool isConflict;

  @override
  String toString() {
    return 'SudokuCell.given(number: $number, isConflict: $isConflict)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GivenCell &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isConflict, isConflict) ||
                const DeepCollectionEquality()
                    .equals(other.isConflict, isConflict)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isConflict);

  @override
  $GivenCellCopyWith<GivenCell> get copyWith =>
      _$GivenCellCopyWithImpl<GivenCell>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number, bool isConflict),
    @required Result filled(int number, bool isConflict),
    @required
        Result guessed(int number, BuiltList<bool> marks, bool isConflict),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessed != null);
    return given(number, isConflict);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number, bool isConflict),
    Result filled(int number, bool isConflict),
    Result guessed(int number, BuiltList<bool> marks, bool isConflict),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (given != null) {
      return given(number, isConflict);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(BlankCell value),
    @required Result given(GivenCell value),
    @required Result filled(FilledCell value),
    @required Result guessed(GuessingCell value),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessed != null);
    return given(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankCell value),
    Result given(GivenCell value),
    Result filled(FilledCell value),
    Result guessed(GuessingCell value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (given != null) {
      return given(this);
    }
    return orElse();
  }
}

abstract class GivenCell extends SudokuCell implements _GivenCellImpl {
  GivenCell._() : super._();
  factory GivenCell(int number, {bool isConflict}) = _$GivenCell;

  int get number;
  bool get isConflict;
  $GivenCellCopyWith<GivenCell> get copyWith;
}

/// @nodoc
abstract class $FilledCellCopyWith<$Res> {
  factory $FilledCellCopyWith(
          FilledCell value, $Res Function(FilledCell) then) =
      _$FilledCellCopyWithImpl<$Res>;
  $Res call({int number, bool isConflict});
}

/// @nodoc
class _$FilledCellCopyWithImpl<$Res> extends _$SudokuCellCopyWithImpl<$Res>
    implements $FilledCellCopyWith<$Res> {
  _$FilledCellCopyWithImpl(FilledCell _value, $Res Function(FilledCell) _then)
      : super(_value, (v) => _then(v as FilledCell));

  @override
  FilledCell get _value => super._value as FilledCell;

  @override
  $Res call({
    Object number = freezed,
    Object isConflict = freezed,
  }) {
    return _then(FilledCell(
      number == freezed ? _value.number : number as int,
      isConflict:
          isConflict == freezed ? _value.isConflict : isConflict as bool,
    ));
  }
}

@With(_FilledCellImpl)

/// @nodoc
class _$FilledCell extends FilledCell with _FilledCellImpl {
  _$FilledCell(this.number, {this.isConflict = false})
      : assert(number != null),
        assert(isConflict != null),
        super._();

  @override
  final int number;
  @JsonKey(defaultValue: false)
  @override
  final bool isConflict;

  @override
  String toString() {
    return 'SudokuCell.filled(number: $number, isConflict: $isConflict)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilledCell &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isConflict, isConflict) ||
                const DeepCollectionEquality()
                    .equals(other.isConflict, isConflict)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isConflict);

  @override
  $FilledCellCopyWith<FilledCell> get copyWith =>
      _$FilledCellCopyWithImpl<FilledCell>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number, bool isConflict),
    @required Result filled(int number, bool isConflict),
    @required
        Result guessed(int number, BuiltList<bool> marks, bool isConflict),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessed != null);
    return filled(number, isConflict);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number, bool isConflict),
    Result filled(int number, bool isConflict),
    Result guessed(int number, BuiltList<bool> marks, bool isConflict),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filled != null) {
      return filled(number, isConflict);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(BlankCell value),
    @required Result given(GivenCell value),
    @required Result filled(FilledCell value),
    @required Result guessed(GuessingCell value),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessed != null);
    return filled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankCell value),
    Result given(GivenCell value),
    Result filled(FilledCell value),
    Result guessed(GuessingCell value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filled != null) {
      return filled(this);
    }
    return orElse();
  }
}

abstract class FilledCell extends SudokuCell implements _FilledCellImpl {
  FilledCell._() : super._();
  factory FilledCell(int number, {bool isConflict}) = _$FilledCell;

  int get number;
  bool get isConflict;
  $FilledCellCopyWith<FilledCell> get copyWith;
}

/// @nodoc
abstract class $GuessingCellCopyWith<$Res> {
  factory $GuessingCellCopyWith(
          GuessingCell value, $Res Function(GuessingCell) then) =
      _$GuessingCellCopyWithImpl<$Res>;
  $Res call({int number, BuiltList<bool> marks, bool isConflict});
}

/// @nodoc
class _$GuessingCellCopyWithImpl<$Res> extends _$SudokuCellCopyWithImpl<$Res>
    implements $GuessingCellCopyWith<$Res> {
  _$GuessingCellCopyWithImpl(
      GuessingCell _value, $Res Function(GuessingCell) _then)
      : super(_value, (v) => _then(v as GuessingCell));

  @override
  GuessingCell get _value => super._value as GuessingCell;

  @override
  $Res call({
    Object number = freezed,
    Object marks = freezed,
    Object isConflict = freezed,
  }) {
    return _then(GuessingCell(
      number == freezed ? _value.number : number as int,
      marks == freezed ? _value.marks : marks as BuiltList<bool>,
      isConflict:
          isConflict == freezed ? _value.isConflict : isConflict as bool,
    ));
  }
}

@With(_GuessingCellImpl)

/// @nodoc
class _$GuessingCell extends GuessingCell with _GuessingCellImpl {
  _$GuessingCell(this.number, this.marks, {this.isConflict = false})
      : assert(number != null),
        assert(marks != null),
        assert(isConflict != null),
        super._();

  @override
  final int number;
  @override
  final BuiltList<bool> marks;
  @JsonKey(defaultValue: false)
  @override
  final bool isConflict;

  @override
  String toString() {
    return 'SudokuCell.guessed(number: $number, marks: $marks, isConflict: $isConflict)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GuessingCell &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.marks, marks) ||
                const DeepCollectionEquality().equals(other.marks, marks)) &&
            (identical(other.isConflict, isConflict) ||
                const DeepCollectionEquality()
                    .equals(other.isConflict, isConflict)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(marks) ^
      const DeepCollectionEquality().hash(isConflict);

  @override
  $GuessingCellCopyWith<GuessingCell> get copyWith =>
      _$GuessingCellCopyWithImpl<GuessingCell>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number, bool isConflict),
    @required Result filled(int number, bool isConflict),
    @required
        Result guessed(int number, BuiltList<bool> marks, bool isConflict),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessed != null);
    return guessed(number, marks, isConflict);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number, bool isConflict),
    Result filled(int number, bool isConflict),
    Result guessed(int number, BuiltList<bool> marks, bool isConflict),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (guessed != null) {
      return guessed(number, marks, isConflict);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(BlankCell value),
    @required Result given(GivenCell value),
    @required Result filled(FilledCell value),
    @required Result guessed(GuessingCell value),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessed != null);
    return guessed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankCell value),
    Result given(GivenCell value),
    Result filled(FilledCell value),
    Result guessed(GuessingCell value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (guessed != null) {
      return guessed(this);
    }
    return orElse();
  }
}

abstract class GuessingCell extends SudokuCell implements _GuessingCellImpl {
  GuessingCell._() : super._();
  factory GuessingCell(int number, BuiltList<bool> marks, {bool isConflict}) =
      _$GuessingCell;

  int get number;
  BuiltList<bool> get marks;
  bool get isConflict;
  $GuessingCellCopyWith<GuessingCell> get copyWith;
}
