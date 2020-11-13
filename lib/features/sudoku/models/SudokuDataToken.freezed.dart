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
  RowBlockToken row({int offset, String expression}) {
    return RowBlockToken(
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  ColumnBlockToken column({int offset, String expression}) {
    return ColumnBlockToken(
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  PositionBlockToken positioned({int offset, String expression}) {
    return PositionBlockToken(
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  EmptyBlockToken emptyBlock({int offset, String expression}) {
    return EmptyBlockToken(
      offset: offset,
      expression: expression,
    );
  }

// ignore: unused_element
  DigitToken digit(int number, {int offset, String expression}) {
    return DigitToken(
      number,
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
    @required Result digit(int number, int offset, String expression),
    @required Result blank(int offset, String expression),
    @required Result tripleBlank(int offset, String expression),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int number, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowBlockToken value),
    @required Result column(ColumnBlockToken value),
    @required Result positioned(PositionBlockToken value),
    @required Result emptyBlock(EmptyBlockToken value),
    @required Result digit(DigitToken value),
    @required Result blank(BlankToken value),
    @required Result tripleBlank(TripleBlankToken value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result row(RowBlockToken value),
    Result column(ColumnBlockToken value),
    Result positioned(PositionBlockToken value),
    Result emptyBlock(EmptyBlockToken value),
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
abstract class $RowBlockTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $RowBlockTokenCopyWith(
          RowBlockToken value, $Res Function(RowBlockToken) then) =
      _$RowBlockTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$RowBlockTokenCopyWithImpl<$Res>
    extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $RowBlockTokenCopyWith<$Res> {
  _$RowBlockTokenCopyWithImpl(
      RowBlockToken _value, $Res Function(RowBlockToken) _then)
      : super(_value, (v) => _then(v as RowBlockToken));

  @override
  RowBlockToken get _value => super._value as RowBlockToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(RowBlockToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$RowBlockToken extends RowBlockToken {
  _$RowBlockToken({this.offset, this.expression}) : super._();

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
        (other is RowBlockToken &&
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
  $RowBlockTokenCopyWith<RowBlockToken> get copyWith =>
      _$RowBlockTokenCopyWithImpl<RowBlockToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int number, int offset, String expression),
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
    Result digit(int number, int offset, String expression),
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
    @required Result row(RowBlockToken value),
    @required Result column(ColumnBlockToken value),
    @required Result positioned(PositionBlockToken value),
    @required Result emptyBlock(EmptyBlockToken value),
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
    Result row(RowBlockToken value),
    Result column(ColumnBlockToken value),
    Result positioned(PositionBlockToken value),
    Result emptyBlock(EmptyBlockToken value),
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

abstract class RowBlockToken extends SudokuDataToken {
  RowBlockToken._() : super._();
  factory RowBlockToken({int offset, String expression}) = _$RowBlockToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $RowBlockTokenCopyWith<RowBlockToken> get copyWith;
}

/// @nodoc
abstract class $ColumnBlockTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $ColumnBlockTokenCopyWith(
          ColumnBlockToken value, $Res Function(ColumnBlockToken) then) =
      _$ColumnBlockTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$ColumnBlockTokenCopyWithImpl<$Res>
    extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $ColumnBlockTokenCopyWith<$Res> {
  _$ColumnBlockTokenCopyWithImpl(
      ColumnBlockToken _value, $Res Function(ColumnBlockToken) _then)
      : super(_value, (v) => _then(v as ColumnBlockToken));

  @override
  ColumnBlockToken get _value => super._value as ColumnBlockToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(ColumnBlockToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$ColumnBlockToken extends ColumnBlockToken {
  _$ColumnBlockToken({this.offset, this.expression}) : super._();

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
        (other is ColumnBlockToken &&
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
  $ColumnBlockTokenCopyWith<ColumnBlockToken> get copyWith =>
      _$ColumnBlockTokenCopyWithImpl<ColumnBlockToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int number, int offset, String expression),
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
    Result digit(int number, int offset, String expression),
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
    @required Result row(RowBlockToken value),
    @required Result column(ColumnBlockToken value),
    @required Result positioned(PositionBlockToken value),
    @required Result emptyBlock(EmptyBlockToken value),
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
    Result row(RowBlockToken value),
    Result column(ColumnBlockToken value),
    Result positioned(PositionBlockToken value),
    Result emptyBlock(EmptyBlockToken value),
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

abstract class ColumnBlockToken extends SudokuDataToken {
  ColumnBlockToken._() : super._();
  factory ColumnBlockToken({int offset, String expression}) =
      _$ColumnBlockToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $ColumnBlockTokenCopyWith<ColumnBlockToken> get copyWith;
}

/// @nodoc
abstract class $PositionBlockTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $PositionBlockTokenCopyWith(
          PositionBlockToken value, $Res Function(PositionBlockToken) then) =
      _$PositionBlockTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$PositionBlockTokenCopyWithImpl<$Res>
    extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $PositionBlockTokenCopyWith<$Res> {
  _$PositionBlockTokenCopyWithImpl(
      PositionBlockToken _value, $Res Function(PositionBlockToken) _then)
      : super(_value, (v) => _then(v as PositionBlockToken));

  @override
  PositionBlockToken get _value => super._value as PositionBlockToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(PositionBlockToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$PositionBlockToken extends PositionBlockToken {
  _$PositionBlockToken({this.offset, this.expression}) : super._();

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
        (other is PositionBlockToken &&
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
  $PositionBlockTokenCopyWith<PositionBlockToken> get copyWith =>
      _$PositionBlockTokenCopyWithImpl<PositionBlockToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int number, int offset, String expression),
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
    Result digit(int number, int offset, String expression),
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
    @required Result row(RowBlockToken value),
    @required Result column(ColumnBlockToken value),
    @required Result positioned(PositionBlockToken value),
    @required Result emptyBlock(EmptyBlockToken value),
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
    Result row(RowBlockToken value),
    Result column(ColumnBlockToken value),
    Result positioned(PositionBlockToken value),
    Result emptyBlock(EmptyBlockToken value),
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

abstract class PositionBlockToken extends SudokuDataToken {
  PositionBlockToken._() : super._();
  factory PositionBlockToken({int offset, String expression}) =
      _$PositionBlockToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $PositionBlockTokenCopyWith<PositionBlockToken> get copyWith;
}

/// @nodoc
abstract class $EmptyBlockTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $EmptyBlockTokenCopyWith(
          EmptyBlockToken value, $Res Function(EmptyBlockToken) then) =
      _$EmptyBlockTokenCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String expression});
}

/// @nodoc
class _$EmptyBlockTokenCopyWithImpl<$Res>
    extends _$SudokuDataTokenCopyWithImpl<$Res>
    implements $EmptyBlockTokenCopyWith<$Res> {
  _$EmptyBlockTokenCopyWithImpl(
      EmptyBlockToken _value, $Res Function(EmptyBlockToken) _then)
      : super(_value, (v) => _then(v as EmptyBlockToken));

  @override
  EmptyBlockToken get _value => super._value as EmptyBlockToken;

  @override
  $Res call({
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(EmptyBlockToken(
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$EmptyBlockToken extends EmptyBlockToken {
  _$EmptyBlockToken({this.offset, this.expression}) : super._();

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
        (other is EmptyBlockToken &&
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
  $EmptyBlockTokenCopyWith<EmptyBlockToken> get copyWith =>
      _$EmptyBlockTokenCopyWithImpl<EmptyBlockToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result row(int offset, String expression),
    @required Result column(int offset, String expression),
    @required Result positioned(int offset, String expression),
    @required Result emptyBlock(int offset, String expression),
    @required Result digit(int number, int offset, String expression),
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
    Result digit(int number, int offset, String expression),
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
    @required Result row(RowBlockToken value),
    @required Result column(ColumnBlockToken value),
    @required Result positioned(PositionBlockToken value),
    @required Result emptyBlock(EmptyBlockToken value),
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
    Result row(RowBlockToken value),
    Result column(ColumnBlockToken value),
    Result positioned(PositionBlockToken value),
    Result emptyBlock(EmptyBlockToken value),
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

abstract class EmptyBlockToken extends SudokuDataToken {
  EmptyBlockToken._() : super._();
  factory EmptyBlockToken({int offset, String expression}) = _$EmptyBlockToken;

  @override
  int get offset;
  @override
  String get expression;
  @override
  $EmptyBlockTokenCopyWith<EmptyBlockToken> get copyWith;
}

/// @nodoc
abstract class $DigitTokenCopyWith<$Res>
    implements $SudokuDataTokenCopyWith<$Res> {
  factory $DigitTokenCopyWith(
          DigitToken value, $Res Function(DigitToken) then) =
      _$DigitTokenCopyWithImpl<$Res>;
  @override
  $Res call({int number, int offset, String expression});
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
    Object number = freezed,
    Object offset = freezed,
    Object expression = freezed,
  }) {
    return _then(DigitToken(
      number == freezed ? _value.number : number as int,
      offset: offset == freezed ? _value.offset : offset as int,
      expression:
          expression == freezed ? _value.expression : expression as String,
    ));
  }
}

/// @nodoc
class _$DigitToken extends DigitToken {
  _$DigitToken(this.number, {this.offset, this.expression})
      : assert(number != null),
        assert(1 <= number && number <= 9),
        super._();

  @override
  final int number;
  @override
  final int offset;
  @override
  final String expression;

  @override
  String toString() {
    return 'SudokuDataToken.digit(number: $number, offset: $offset, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DigitToken &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
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
    @required Result digit(int number, int offset, String expression),
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
    return digit(number, offset, expression);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result row(int offset, String expression),
    Result column(int offset, String expression),
    Result positioned(int offset, String expression),
    Result emptyBlock(int offset, String expression),
    Result digit(int number, int offset, String expression),
    Result blank(int offset, String expression),
    Result tripleBlank(int offset, String expression),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (digit != null) {
      return digit(number, offset, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result row(RowBlockToken value),
    @required Result column(ColumnBlockToken value),
    @required Result positioned(PositionBlockToken value),
    @required Result emptyBlock(EmptyBlockToken value),
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
    Result row(RowBlockToken value),
    Result column(ColumnBlockToken value),
    Result positioned(PositionBlockToken value),
    Result emptyBlock(EmptyBlockToken value),
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
  factory DigitToken(int number, {int offset, String expression}) =
      _$DigitToken;

  int get number;
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
    @required Result digit(int number, int offset, String expression),
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
    Result digit(int number, int offset, String expression),
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
    @required Result row(RowBlockToken value),
    @required Result column(ColumnBlockToken value),
    @required Result positioned(PositionBlockToken value),
    @required Result emptyBlock(EmptyBlockToken value),
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
    Result row(RowBlockToken value),
    Result column(ColumnBlockToken value),
    Result positioned(PositionBlockToken value),
    Result emptyBlock(EmptyBlockToken value),
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
    @required Result digit(int number, int offset, String expression),
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
    Result digit(int number, int offset, String expression),
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
    @required Result row(RowBlockToken value),
    @required Result column(ColumnBlockToken value),
    @required Result positioned(PositionBlockToken value),
    @required Result emptyBlock(EmptyBlockToken value),
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
    Result row(RowBlockToken value),
    Result column(ColumnBlockToken value),
    Result positioned(PositionBlockToken value),
    Result emptyBlock(EmptyBlockToken value),
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
