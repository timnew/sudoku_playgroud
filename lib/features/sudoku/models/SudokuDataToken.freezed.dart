// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'SudokuDataToken.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SudokuDataTokenTearOff {
  const _$SudokuDataTokenTearOff();

// ignore: unused_element
  RowToken row({int offset, String expression}) {
    return RowToken(
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  ColumnToken column({int offset, String expression}) {
    return ColumnToken(
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  PositionedToken positioned({int offset, String expression}) {
    return PositionedToken(
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  EmptyToken emptyBlock({int offset, String expression}) {
    return EmptyToken(
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  DigitToken digit(int digit, {int offset, String expression}) {
    return DigitToken(
      digit,
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  BlankToken blank({int offset, String expression}) {
    return BlankToken(
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  TripleBlankToken tripleBlank({int offset, String expression}) {
    return TripleBlankToken(
      offset: offset,
      expression: expression,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SudokuDataToken = _$SudokuDataTokenTearOff();

/// @nodoc
mixin _$SudokuDataToken {
  int get offset;
  String get expression;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int digit, int offset, String expression),
    @required Result blank(int offset, String expression),
    @required Result tripleBlank(int offset, String expression),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int digit, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowToken value),
    @required Result column(ColumnToken value),
    @required Result positioned(PositionedToken value),
    @required Result emptyBlock(EmptyToken value),
    @required Result digit(DigitToken value),
    @required Result blank(BlankToken value),
    @required Result tripleBlank(TripleBlankToken value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result row(RowToken value),
    Result column(ColumnToken value),
    Result positioned(PositionedToken value),
    Result emptyBlock(EmptyToken value),
    Result digit(DigitToken value),
    Result blank(BlankToken value),
    Result tripleBlank(TripleBlankToken value),
    @required Result orElse(),
  });

  $SudokuDataTokenCopyWith<SudokuDataToken> get copyWith;
}

/// @nodoc
abstract class $SudokuDataTokenCopyWith<$Res> {
  factory $SudokuDataTokenCopyWith(
          SudokuDataToken value, $Res Function(SudokuDataToken) then) =
      _$SudokuDataTokenCopyWithImpl<$Res>;
  $Res call({int offset, String expression});
}

/// @nodoc
class _$SudokuDataTokenCopyWithImpl<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  _$SudokuDataTokenCopyWithImpl(this._value, this._then);

  final SudokuDataToken _value;
  // ignore: unused_field
  final $Res Function(SudokuDataToken) _then;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
abstract class $RowTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $RowTokenCopyWith(RowToken value, $Res Function(RowToken) then) =
      _$RowTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$RowTokenCopyWithImpl<$Res> extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $RowTokenCopyWith<$Res> {
  _$RowTokenCopyWithImpl(RowToken _value, $Res Function(RowToken) _then)
      : super(_value, (v) => _then(v as RowToken));

  @override
  RowToken get _value => super._value as RowToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(RowToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$RowToken extends RowToken {
  _$RowToken({this.offset, this.expression}) : super._();

  @override
  final int offset;
  @override
  final String expression;

  @override
  String toString() {
    return 'SudokuDataToken.row(offset: $offset, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RowToken &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(expression);

  @override
  $RowTokenCopyWith<RowToken> get copyWith =>
      _$RowTokenCopyWithImpl<RowToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int digit, int offset, String expression),
    @required Result blank(int offset, String expression),
    @required Result tripleBlank(int offset, String expression),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return row(offset, expression);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int digit, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (row != null) {
      return row(offset, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowToken value),
    @required Result column(ColumnToken value),
    @required Result positioned(PositionedToken value),
    @required Result emptyBlock(EmptyToken value),
    @required Result digit(DigitToken value),
    @required Result blank(BlankToken value),
    @required Result tripleBlank(TripleBlankToken value),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return row(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result row(RowToken value),
    Result column(ColumnToken value),
    Result positioned(PositionedToken value),
    Result emptyBlock(EmptyToken value),
    Result digit(DigitToken value),
    Result blank(BlankToken value),
    Result tripleBlank(TripleBlankToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (row != null) {
      return row(this);
    }
    return orElse();
  }
}

abstract class RowToken extends SudokuDataToken {
  RowToken._() : super._();
  factory RowToken({int offset, String expression}) = _$RowToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $RowTokenCopyWith<RowToken> get copyWith;
}

/// @nodoc
abstract class $ColumnTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $ColumnTokenCopyWith(
          ColumnToken value, $Res Function(ColumnToken) then) =
      _$ColumnTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$ColumnTokenCopyWithImpl<$Res>
    extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $ColumnTokenCopyWith<$Res> {
  _$ColumnTokenCopyWithImpl(
      ColumnToken _value, $Res Function(ColumnToken) _then)
      : super(_value, (v) => _then(v as ColumnToken));

  @override
  ColumnToken get _value => super._value as ColumnToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(ColumnToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$ColumnToken extends ColumnToken {
  _$ColumnToken({this.offset, this.expression}) : super._();

  @override
  final int offset;
  @override
  final String expression;

  @override
  String toString() {
    return 'SudokuDataToken.column(offset: $offset, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ColumnToken &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(expression);

  @override
  $ColumnTokenCopyWith<ColumnToken> get copyWith =>
      _$ColumnTokenCopyWithImpl<ColumnToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int digit, int offset, String expression),
    @required Result blank(int offset, String expression),
    @required Result tripleBlank(int offset, String expression),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return column(offset, expression);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int digit, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (column != null) {
      return column(offset, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowToken value),
    @required Result column(ColumnToken value),
    @required Result positioned(PositionedToken value),
    @required Result emptyBlock(EmptyToken value),
    @required Result digit(DigitToken value),
    @required Result blank(BlankToken value),
    @required Result tripleBlank(TripleBlankToken value),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return column(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result row(RowToken value),
    Result column(ColumnToken value),
    Result positioned(PositionedToken value),
    Result emptyBlock(EmptyToken value),
    Result digit(DigitToken value),
    Result blank(BlankToken value),
    Result tripleBlank(TripleBlankToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (column != null) {
      return column(this);
    }
    return orElse();
  }
}

abstract class ColumnToken extends SudokuDataToken {
  ColumnToken._() : super._();
  factory ColumnToken({int offset, String expression}) = _$ColumnToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $ColumnTokenCopyWith<ColumnToken> get copyWith;
}

/// @nodoc
abstract class $PositionedTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $PositionedTokenCopyWith(
          PositionedToken value, $Res Function(PositionedToken) then) =
      _$PositionedTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$PositionedTokenCopyWithImpl<$Res>
    extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $PositionedTokenCopyWith<$Res> {
  _$PositionedTokenCopyWithImpl(
      PositionedToken _value, $Res Function(PositionedToken) _then)
      : super(_value, (v) => _then(v as PositionedToken));

  @override
  PositionedToken get _value => super._value as PositionedToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(PositionedToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$PositionedToken extends PositionedToken {
  _$PositionedToken({this.offset, this.expression}) : super._();

  @override
  final int offset;
  @override
  final String expression;

  @override
  String toString() {
    return 'SudokuDataToken.positioned(offset: $offset, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PositionedToken &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(expression);

  @override
  $PositionedTokenCopyWith<PositionedToken> get copyWith =>
      _$PositionedTokenCopyWithImpl<PositionedToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int digit, int offset, String expression),
    @required Result blank(int offset, String expression),
    @required Result tripleBlank(int offset, String expression),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return positioned(offset, expression);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int digit, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (positioned != null) {
      return positioned(offset, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowToken value),
    @required Result column(ColumnToken value),
    @required Result positioned(PositionedToken value),
    @required Result emptyBlock(EmptyToken value),
    @required Result digit(DigitToken value),
    @required Result blank(BlankToken value),
    @required Result tripleBlank(TripleBlankToken value),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return positioned(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result row(RowToken value),
    Result column(ColumnToken value),
    Result positioned(PositionedToken value),
    Result emptyBlock(EmptyToken value),
    Result digit(DigitToken value),
    Result blank(BlankToken value),
    Result tripleBlank(TripleBlankToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (positioned != null) {
      return positioned(this);
    }
    return orElse();
  }
}

abstract class PositionedToken extends SudokuDataToken {
  PositionedToken._() : super._();
  factory PositionedToken({int offset, String expression}) = _$PositionedToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $PositionedTokenCopyWith<PositionedToken> get copyWith;
}

/// @nodoc
abstract class $EmptyTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $EmptyTokenCopyWith(
          EmptyToken value, $Res Function(EmptyToken) then) =
      _$EmptyTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$EmptyTokenCopyWithImpl<$Res> extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $EmptyTokenCopyWith<$Res> {
  _$EmptyTokenCopyWithImpl(EmptyToken _value, $Res Function(EmptyToken) _then)
      : super(_value, (v) => _then(v as EmptyToken));

  @override
  EmptyToken get _value => super._value as EmptyToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(EmptyToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$EmptyToken extends EmptyToken {
  _$EmptyToken({this.offset, this.expression}) : super._();

  @override
  final int offset;
  @override
  final String expression;

  @override
  String toString() {
    return 'SudokuDataToken.emptyBlock(offset: $offset, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyToken &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(expression);

  @override
  $EmptyTokenCopyWith<EmptyToken> get copyWith =>
      _$EmptyTokenCopyWithImpl<EmptyToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int digit, int offset, String expression),
    @required Result blank(int offset, String expression),
    @required Result tripleBlank(int offset, String expression),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return emptyBlock(offset, expression);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int digit, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyBlock != null) {
      return emptyBlock(offset, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowToken value),
    @required Result column(ColumnToken value),
    @required Result positioned(PositionedToken value),
    @required Result emptyBlock(EmptyToken value),
    @required Result digit(DigitToken value),
    @required Result blank(BlankToken value),
    @required Result tripleBlank(TripleBlankToken value),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return emptyBlock(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result row(RowToken value),
    Result column(ColumnToken value),
    Result positioned(PositionedToken value),
    Result emptyBlock(EmptyToken value),
    Result digit(DigitToken value),
    Result blank(BlankToken value),
    Result tripleBlank(TripleBlankToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyBlock != null) {
      return emptyBlock(this);
    }
    return orElse();
  }
}

abstract class EmptyToken extends SudokuDataToken {
  EmptyToken._() : super._();
  factory EmptyToken({int offset, String expression}) = _$EmptyToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $EmptyTokenCopyWith<EmptyToken> get copyWith;
}

/// @nodoc
abstract class $DigitTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $DigitTokenCopyWith(
          DigitToken value, $Res Function(DigitToken) then) =
      _$DigitTokenCopyWithImpl<$Res>;
  @override
  $Res call({int digit, int offset, String expression});
}

/// @nodoc
class _$DigitTokenCopyWithImpl<$Res> extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $DigitTokenCopyWith<$Res> {
  _$DigitTokenCopyWithImpl(DigitToken _value, $Res Function(DigitToken) _then)
      : super(_value, (v) => _then(v as DigitToken));

  @override
  DigitToken get _value => super._value as DigitToken;

  @override
  $Res call({
    Object digit = freezed,
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(DigitToken(
      digit == freezed ? _value.digit : digit as int,
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$DigitToken extends DigitToken {
  _$DigitToken(this.digit, {this.offset, this.expression})
      : assert(digit != null),
        assert(1 <= digit && digit <= 9),
        super._();

  @override
  final int digit;
  @override
  final int offset;
  @override
  final String expression;

  @override
  String toString() {
    return 'SudokuDataToken.digit(digit: $digit, offset: $offset, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DigitToken &&
            (identical(other.digit, digit) ||
                const DeepCollectionEquality().equals(other.digit, digit)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(digit) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(expression);

  @override
  $DigitTokenCopyWith<DigitToken> get copyWith =>
      _$DigitTokenCopyWithImpl<DigitToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int digit, int offset, String expression),
    @required Result blank(int offset, String expression),
    @required Result tripleBlank(int offset, String expression),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return digit(this.digit, offset, expression);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int digit, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (digit != null) {
      return digit(this.digit, offset, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowToken value),
    @required Result column(ColumnToken value),
    @required Result positioned(PositionedToken value),
    @required Result emptyBlock(EmptyToken value),
    @required Result digit(DigitToken value),
    @required Result blank(BlankToken value),
    @required Result tripleBlank(TripleBlankToken value),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return digit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result row(RowToken value),
    Result column(ColumnToken value),
    Result positioned(PositionedToken value),
    Result emptyBlock(EmptyToken value),
    Result digit(DigitToken value),
    Result blank(BlankToken value),
    Result tripleBlank(TripleBlankToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (digit != null) {
      return digit(this);
    }
    return orElse();
  }
}

abstract class DigitToken extends SudokuDataToken {
  DigitToken._() : super._();
  factory DigitToken(int digit, {int offset, String expression}) = _$DigitToken;

  int get digit;
  @override
  int get offset;
  @override
  String get expression;
  @override
  $DigitTokenCopyWith<DigitToken> get copyWith;
}

/// @nodoc
abstract class $BlankTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $BlankTokenCopyWith(
          BlankToken value, $Res Function(BlankToken) then) =
      _$BlankTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$BlankTokenCopyWithImpl<$Res> extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $BlankTokenCopyWith<$Res> {
  _$BlankTokenCopyWithImpl(BlankToken _value, $Res Function(BlankToken) _then)
      : super(_value, (v) => _then(v as BlankToken));

  @override
  BlankToken get _value => super._value as BlankToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(BlankToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$BlankToken extends BlankToken {
  _$BlankToken({this.offset, this.expression}) : super._();

  @override
  final int offset;
  @override
  final String expression;

  @override
  String toString() {
    return 'SudokuDataToken.blank(offset: $offset, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BlankToken &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(expression);

  @override
  $BlankTokenCopyWith<BlankToken> get copyWith =>
      _$BlankTokenCopyWithImpl<BlankToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int digit, int offset, String expression),
    @required Result blank(int offset, String expression),
    @required Result tripleBlank(int offset, String expression),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return blank(offset, expression);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int digit, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blank != null) {
      return blank(offset, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowToken value),
    @required Result column(ColumnToken value),
    @required Result positioned(PositionedToken value),
    @required Result emptyBlock(EmptyToken value),
    @required Result digit(DigitToken value),
    @required Result blank(BlankToken value),
    @required Result tripleBlank(TripleBlankToken value),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return blank(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result row(RowToken value),
    Result column(ColumnToken value),
    Result positioned(PositionedToken value),
    Result emptyBlock(EmptyToken value),
    Result digit(DigitToken value),
    Result blank(BlankToken value),
    Result tripleBlank(TripleBlankToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blank != null) {
      return blank(this);
    }
    return orElse();
  }
}

abstract class BlankToken extends SudokuDataToken {
  BlankToken._() : super._();
  factory BlankToken({int offset, String expression}) = _$BlankToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $BlankTokenCopyWith<BlankToken> get copyWith;
}

/// @nodoc
abstract class $TripleBlankTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $TripleBlankTokenCopyWith(
          TripleBlankToken value, $Res Function(TripleBlankToken) then) =
      _$TripleBlankTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$TripleBlankTokenCopyWithImpl<$Res>
    extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $TripleBlankTokenCopyWith<$Res> {
  _$TripleBlankTokenCopyWithImpl(
      TripleBlankToken _value, $Res Function(TripleBlankToken) _then)
      : super(_value, (v) => _then(v as TripleBlankToken));

  @override
  TripleBlankToken get _value => super._value as TripleBlankToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(TripleBlankToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$TripleBlankToken extends TripleBlankToken {
  _$TripleBlankToken({this.offset, this.expression}) : super._();

  @override
  final int offset;
  @override
  final String expression;

  @override
  String toString() {
    return 'SudokuDataToken.tripleBlank(offset: $offset, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TripleBlankToken &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(expression);

  @override
  $TripleBlankTokenCopyWith<TripleBlankToken> get copyWith =>
      _$TripleBlankTokenCopyWithImpl<TripleBlankToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int digit, int offset, String expression),
    @required Result blank(int offset, String expression),
    @required Result tripleBlank(int offset, String expression),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return tripleBlank(offset, expression);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int digit, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tripleBlank != null) {
      return tripleBlank(offset, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowToken value),
    @required Result column(ColumnToken value),
    @required Result positioned(PositionedToken value),
    @required Result emptyBlock(EmptyToken value),
    @required Result digit(DigitToken value),
    @required Result blank(BlankToken value),
    @required Result tripleBlank(TripleBlankToken value),
  }) {
    assert(row != null);
    assert(column != null);
    assert(positioned != null);
    assert(emptyBlock != null);
    assert(digit != null);
    assert(blank != null);
    assert(tripleBlank != null);
    return tripleBlank(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result row(RowToken value),
    Result column(ColumnToken value),
    Result positioned(PositionedToken value),
    Result emptyBlock(EmptyToken value),
    Result digit(DigitToken value),
    Result blank(BlankToken value),
    Result tripleBlank(TripleBlankToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tripleBlank != null) {
      return tripleBlank(this);
    }
    return orElse();
  }
}

abstract class TripleBlankToken extends SudokuDataToken {
  TripleBlankToken._() : super._();
  factory TripleBlankToken({int offset, String expression}) =
      _$TripleBlankToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $TripleBlankTokenCopyWith<TripleBlankToken> get copyWith;
}
