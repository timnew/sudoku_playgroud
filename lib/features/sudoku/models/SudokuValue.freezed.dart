// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'SudokuValue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SudokuValueTearOff {
  const _$SudokuValueTearOff();

// ignore: unused_element
  BlankValue blank() {
    return BlankValue();
  }

// ignore: unused_element
  GivenValue given(int number) {
    return GivenValue(
      number,
    );
  }

// ignore: unused_element
  FilledValue filled(int number) {
    return FilledValue(
      number,
    );
  }

// ignore: unused_element
  GuessingValue guessing(int number, BuiltList<bool> marks) {
    return GuessingValue(
      number,
      marks,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SudokuValue = _$SudokuValueTearOff();

/// @nodoc
mixin _$SudokuValue {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number),
    @required Result filled(int number),
    @required Result guessing(int number, BuiltList<bool> marks),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number),
    Result filled(int number),
    Result guessing(int number, BuiltList<bool> marks),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(BlankValue value),
    @required Result given(GivenValue value),
    @required Result filled(FilledValue value),
    @required Result guessing(GuessingValue value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankValue value),
    Result given(GivenValue value),
    Result filled(FilledValue value),
    Result guessing(GuessingValue value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SudokuValueCopyWith<$Res> {
  factory $SudokuValueCopyWith(
          SudokuValue value, $Res Function(SudokuValue) then) =
      _$SudokuValueCopyWithImpl<$Res>;
}

/// @nodoc
class _$SudokuValueCopyWithImpl<$Res> implements $SudokuValueCopyWith<$Res> {
  _$SudokuValueCopyWithImpl(this._value, this._then);

  final SudokuValue _value;
  // ignore: unused_field
  final $Res Function(SudokuValue) _then;
}

/// @nodoc
abstract class $BlankValueCopyWith<$Res> {
  factory $BlankValueCopyWith(
          BlankValue value, $Res Function(BlankValue) then) =
      _$BlankValueCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlankValueCopyWithImpl<$Res> extends _$SudokuValueCopyWithImpl<$Res>
    implements $BlankValueCopyWith<$Res> {
  _$BlankValueCopyWithImpl(BlankValue _value, $Res Function(BlankValue) _then)
      : super(_value, (v) => _then(v as BlankValue));

  @override
  BlankValue get _value => super._value as BlankValue;
}

/// @nodoc
class _$BlankValue extends BlankValue {
  _$BlankValue() : super._();

  @override
  String toString() {
    return 'SudokuValue.blank()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BlankValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number),
    @required Result filled(int number),
    @required Result guessing(int number, BuiltList<bool> marks),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessing != null);
    return blank();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number),
    Result filled(int number),
    Result guessing(int number, BuiltList<bool> marks),
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
    @required Result blank(BlankValue value),
    @required Result given(GivenValue value),
    @required Result filled(FilledValue value),
    @required Result guessing(GuessingValue value),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessing != null);
    return blank(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankValue value),
    Result given(GivenValue value),
    Result filled(FilledValue value),
    Result guessing(GuessingValue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blank != null) {
      return blank(this);
    }
    return orElse();
  }
}

abstract class BlankValue extends SudokuValue {
  BlankValue._() : super._();
  factory BlankValue() = _$BlankValue;
}

/// @nodoc
abstract class $GivenValueCopyWith<$Res> {
  factory $GivenValueCopyWith(
          GivenValue value, $Res Function(GivenValue) then) =
      _$GivenValueCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class _$GivenValueCopyWithImpl<$Res> extends _$SudokuValueCopyWithImpl<$Res>
    implements $GivenValueCopyWith<$Res> {
  _$GivenValueCopyWithImpl(GivenValue _value, $Res Function(GivenValue) _then)
      : super(_value, (v) => _then(v as GivenValue));

  @override
  GivenValue get _value => super._value as GivenValue;

  @override
  $Res call({
    Object number = freezed,
  }) {
    return _then(GivenValue(
      number == freezed ? _value.number : number as int,
    ));
  }
}

/// @nodoc
class _$GivenValue extends GivenValue {
  _$GivenValue(this.number)
      : assert(number != null),
        super._();

  @override
  final int number;

  @override
  String toString() {
    return 'SudokuValue.given(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GivenValue &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @override
  $GivenValueCopyWith<GivenValue> get copyWith =>
      _$GivenValueCopyWithImpl<GivenValue>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number),
    @required Result filled(int number),
    @required Result guessing(int number, BuiltList<bool> marks),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessing != null);
    return given(number);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number),
    Result filled(int number),
    Result guessing(int number, BuiltList<bool> marks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (given != null) {
      return given(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(BlankValue value),
    @required Result given(GivenValue value),
    @required Result filled(FilledValue value),
    @required Result guessing(GuessingValue value),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessing != null);
    return given(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankValue value),
    Result given(GivenValue value),
    Result filled(FilledValue value),
    Result guessing(GuessingValue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (given != null) {
      return given(this);
    }
    return orElse();
  }
}

abstract class GivenValue extends SudokuValue {
  GivenValue._() : super._();
  factory GivenValue(int number) = _$GivenValue;

  int get number;
  $GivenValueCopyWith<GivenValue> get copyWith;
}

/// @nodoc
abstract class $FilledValueCopyWith<$Res> {
  factory $FilledValueCopyWith(
          FilledValue value, $Res Function(FilledValue) then) =
      _$FilledValueCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class _$FilledValueCopyWithImpl<$Res> extends _$SudokuValueCopyWithImpl<$Res>
    implements $FilledValueCopyWith<$Res> {
  _$FilledValueCopyWithImpl(
      FilledValue _value, $Res Function(FilledValue) _then)
      : super(_value, (v) => _then(v as FilledValue));

  @override
  FilledValue get _value => super._value as FilledValue;

  @override
  $Res call({
    Object number = freezed,
  }) {
    return _then(FilledValue(
      number == freezed ? _value.number : number as int,
    ));
  }
}

/// @nodoc
class _$FilledValue extends FilledValue {
  _$FilledValue(this.number)
      : assert(number != null),
        super._();

  @override
  final int number;

  @override
  String toString() {
    return 'SudokuValue.filled(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilledValue &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @override
  $FilledValueCopyWith<FilledValue> get copyWith =>
      _$FilledValueCopyWithImpl<FilledValue>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number),
    @required Result filled(int number),
    @required Result guessing(int number, BuiltList<bool> marks),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessing != null);
    return filled(number);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number),
    Result filled(int number),
    Result guessing(int number, BuiltList<bool> marks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filled != null) {
      return filled(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(BlankValue value),
    @required Result given(GivenValue value),
    @required Result filled(FilledValue value),
    @required Result guessing(GuessingValue value),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessing != null);
    return filled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankValue value),
    Result given(GivenValue value),
    Result filled(FilledValue value),
    Result guessing(GuessingValue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filled != null) {
      return filled(this);
    }
    return orElse();
  }
}

abstract class FilledValue extends SudokuValue {
  FilledValue._() : super._();
  factory FilledValue(int number) = _$FilledValue;

  int get number;
  $FilledValueCopyWith<FilledValue> get copyWith;
}

/// @nodoc
abstract class $GuessingValueCopyWith<$Res> {
  factory $GuessingValueCopyWith(
          GuessingValue value, $Res Function(GuessingValue) then) =
      _$GuessingValueCopyWithImpl<$Res>;
  $Res call({int number, BuiltList<bool> marks});
}

/// @nodoc
class _$GuessingValueCopyWithImpl<$Res> extends _$SudokuValueCopyWithImpl<$Res>
    implements $GuessingValueCopyWith<$Res> {
  _$GuessingValueCopyWithImpl(
      GuessingValue _value, $Res Function(GuessingValue) _then)
      : super(_value, (v) => _then(v as GuessingValue));

  @override
  GuessingValue get _value => super._value as GuessingValue;

  @override
  $Res call({
    Object number = freezed,
    Object marks = freezed,
  }) {
    return _then(GuessingValue(
      number == freezed ? _value.number : number as int,
      marks == freezed ? _value.marks : marks as BuiltList<bool>,
    ));
  }
}

/// @nodoc
class _$GuessingValue extends GuessingValue {
  _$GuessingValue(this.number, this.marks)
      : assert(number != null),
        assert(marks != null),
        super._();

  @override
  final int number;
  @override
  final BuiltList<bool> marks;

  @override
  String toString() {
    return 'SudokuValue.guessing(number: $number, marks: $marks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GuessingValue &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.marks, marks) ||
                const DeepCollectionEquality().equals(other.marks, marks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(marks);

  @override
  $GuessingValueCopyWith<GuessingValue> get copyWith =>
      _$GuessingValueCopyWithImpl<GuessingValue>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result given(int number),
    @required Result filled(int number),
    @required Result guessing(int number, BuiltList<bool> marks),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessing != null);
    return guessing(number, marks);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result given(int number),
    Result filled(int number),
    Result guessing(int number, BuiltList<bool> marks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (guessing != null) {
      return guessing(number, marks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(BlankValue value),
    @required Result given(GivenValue value),
    @required Result filled(FilledValue value),
    @required Result guessing(GuessingValue value),
  }) {
    assert(blank != null);
    assert(given != null);
    assert(filled != null);
    assert(guessing != null);
    return guessing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(BlankValue value),
    Result given(GivenValue value),
    Result filled(FilledValue value),
    Result guessing(GuessingValue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (guessing != null) {
      return guessing(this);
    }
    return orElse();
  }
}

abstract class GuessingValue extends SudokuValue {
  GuessingValue._() : super._();
  factory GuessingValue(int number, BuiltList<bool> marks) = _$GuessingValue;

  int get number;
  BuiltList<bool> get marks;
  $GuessingValueCopyWith<GuessingValue> get copyWith;
}
