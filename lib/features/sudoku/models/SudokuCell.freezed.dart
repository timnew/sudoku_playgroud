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
  _SudokuCell call(SudokuValue value,
      {@nullable BuiltSet<SudokuIndex> conflicts}) {
    return _SudokuCell(
      value,
      conflicts: conflicts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SudokuCell = _$SudokuCellTearOff();

/// @nodoc
mixin _$SudokuCell {
  SudokuValue get value;
  @nullable
  BuiltSet<SudokuIndex> get conflicts;

  $SudokuCellCopyWith<SudokuCell> get copyWith;
}

/// @nodoc
abstract class $SudokuCellCopyWith<$Res> {
  factory $SudokuCellCopyWith(
          SudokuCell value, $Res Function(SudokuCell) then) =
      _$SudokuCellCopyWithImpl<$Res>;
  $Res call({SudokuValue value, @nullable BuiltSet<SudokuIndex> conflicts});

  $SudokuValueCopyWith<$Res> get value;
}

/// @nodoc
class _$SudokuCellCopyWithImpl<$Res> implements $SudokuCellCopyWith<$Res> {
  _$SudokuCellCopyWithImpl(this._value, this._then);

  final SudokuCell _value;
  // ignore: unused_field
  final $Res Function(SudokuCell) _then;

  @override
  $Res call({
    Object value = freezed,
    Object conflicts = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as SudokuValue,
      conflicts: conflicts == freezed
          ? _value.conflicts
          : conflicts as BuiltSet<SudokuIndex>,
    ));
  }

  @override
  $SudokuValueCopyWith<$Res> get value {
    if (_value.value == null) {
      return null;
    }
    return $SudokuValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$SudokuCellCopyWith<$Res> implements $SudokuCellCopyWith<$Res> {
  factory _$SudokuCellCopyWith(
          _SudokuCell value, $Res Function(_SudokuCell) then) =
      __$SudokuCellCopyWithImpl<$Res>;
  @override
  $Res call({SudokuValue value, @nullable BuiltSet<SudokuIndex> conflicts});

  @override
  $SudokuValueCopyWith<$Res> get value;
}

/// @nodoc
class __$SudokuCellCopyWithImpl<$Res> extends _$SudokuCellCopyWithImpl<$Res>
    implements _$SudokuCellCopyWith<$Res> {
  __$SudokuCellCopyWithImpl(
      _SudokuCell _value, $Res Function(_SudokuCell) _then)
      : super(_value, (v) => _then(v as _SudokuCell));

  @override
  _SudokuCell get _value => super._value as _SudokuCell;

  @override
  $Res call({
    Object value = freezed,
    Object conflicts = freezed,
  }) {
    return _then(_SudokuCell(
      value == freezed ? _value.value : value as SudokuValue,
      conflicts: conflicts == freezed
          ? _value.conflicts
          : conflicts as BuiltSet<SudokuIndex>,
    ));
  }
}

/// @nodoc
class _$_SudokuCell extends _SudokuCell {
  _$_SudokuCell(this.value, {@nullable this.conflicts})
      : assert(value != null),
        super._();

  @override
  final SudokuValue value;
  @override
  @nullable
  final BuiltSet<SudokuIndex> conflicts;

  @override
  String toString() {
    return 'SudokuCell(value: $value, conflicts: $conflicts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SudokuCell &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.conflicts, conflicts) ||
                const DeepCollectionEquality()
                    .equals(other.conflicts, conflicts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(conflicts);

  @override
  _$SudokuCellCopyWith<_SudokuCell> get copyWith =>
      __$SudokuCellCopyWithImpl<_SudokuCell>(this, _$identity);
}

abstract class _SudokuCell extends SudokuCell {
  _SudokuCell._() : super._();
  factory _SudokuCell(SudokuValue value,
      {@nullable BuiltSet<SudokuIndex> conflicts}) = _$_SudokuCell;

  @override
  SudokuValue get value;
  @override
  @nullable
  BuiltSet<SudokuIndex> get conflicts;
  @override
  _$SudokuCellCopyWith<_SudokuCell> get copyWith;
}
