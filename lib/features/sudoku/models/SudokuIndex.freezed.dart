// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'SudokuIndex.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SudokuIndexTearOff {
  const _$SudokuIndexTearOff();

// ignore: unused_element
  _SudokuIndex call(int row, int col) {
    return _SudokuIndex(
      row,
      col,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SudokuIndex = _$SudokuIndexTearOff();

/// @nodoc
mixin _$SudokuIndex {
  int get row;
  int get col;

  $SudokuIndexCopyWith<SudokuIndex> get copyWith;
}

/// @nodoc
abstract class $SudokuIndexCopyWith<$Res> {
  factory $SudokuIndexCopyWith(
          SudokuIndex value, $Res Function(SudokuIndex) then) =
      _$SudokuIndexCopyWithImpl<$Res>;
  $Res call({int row, int col});
}

/// @nodoc
class _$SudokuIndexCopyWithImpl<$Res> implements $SudokuIndexCopyWith<$Res> {
  _$SudokuIndexCopyWithImpl(this._value, this._then);

  final SudokuIndex _value;
  // ignore: unused_field
  final $Res Function(SudokuIndex) _then;

  @override
  $Res call({
    Object row = freezed,
    Object col = freezed,
  }) {
    return _then(_value.copyWith(
      row: row == freezed ? _value.row : row as int,
      col: col == freezed ? _value.col : col as int,
    ));
  }
}

/// @nodoc
abstract class _$SudokuIndexCopyWith<$Res>
    implements $SudokuIndexCopyWith<$Res> {
  factory _$SudokuIndexCopyWith(
          _SudokuIndex value, $Res Function(_SudokuIndex) then) =
      __$SudokuIndexCopyWithImpl<$Res>;
  @override
  $Res call({int row, int col});
}

/// @nodoc
class __$SudokuIndexCopyWithImpl<$Res> extends _$SudokuIndexCopyWithImpl<$Res>
    implements _$SudokuIndexCopyWith<$Res> {
  __$SudokuIndexCopyWithImpl(
      _SudokuIndex _value, $Res Function(_SudokuIndex) _then)
      : super(_value, (v) => _then(v as _SudokuIndex));

  @override
  _SudokuIndex get _value => super._value as _SudokuIndex;

  @override
  $Res call({
    Object row = freezed,
    Object col = freezed,
  }) {
    return _then(_SudokuIndex(
      row == freezed ? _value.row : row as int,
      col == freezed ? _value.col : col as int,
    ));
  }
}

/// @nodoc
class _$_SudokuIndex extends _SudokuIndex {
  _$_SudokuIndex(this.row, this.col)
      : assert(row != null),
        assert(col != null),
        assert(row > 0 && row <= 9),
        assert(col > 0 && col <= 9),
        super._();

  @override
  final int row;
  @override
  final int col;

  @override
  String toString() {
    return 'SudokuIndex(row: $row, col: $col)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SudokuIndex &&
            (identical(other.row, row) ||
                const DeepCollectionEquality().equals(other.row, row)) &&
            (identical(other.col, col) ||
                const DeepCollectionEquality().equals(other.col, col)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(row) ^
      const DeepCollectionEquality().hash(col);

  @override
  _$SudokuIndexCopyWith<_SudokuIndex> get copyWith =>
      __$SudokuIndexCopyWithImpl<_SudokuIndex>(this, _$identity);
}

abstract class _SudokuIndex extends SudokuIndex {
  _SudokuIndex._() : super._();
  factory _SudokuIndex(int row, int col) = _$_SudokuIndex;

  @override
  int get row;
  @override
  int get col;
  @override
  _$SudokuIndexCopyWith<_SudokuIndex> get copyWith;
}
