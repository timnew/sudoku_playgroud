// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'Sudoku.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SudokuTearOff {
  const _$SudokuTearOff();

// ignore: unused_element
  _Sudoku call(
      {BuiltMap<SudokuIndex, SudokuValue> cells,
      BuiltSet<SudokuIndex> conflicts,
      SudokuIndex selected,
      BuiltSet<SudokuIndex> highlighted}) {
    return _Sudoku(
      cells: cells,
      conflicts: conflicts,
      selected: selected,
      highlighted: highlighted,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Sudoku = _$SudokuTearOff();

/// @nodoc
mixin _$Sudoku {
  BuiltMap<SudokuIndex, SudokuValue> get cells;
  BuiltSet<SudokuIndex> get conflicts;
  SudokuIndex get selected;
  BuiltSet<SudokuIndex> get highlighted;

  $SudokuCopyWith<Sudoku> get copyWith;
}

/// @nodoc
abstract class $SudokuCopyWith<$Res> {
  factory $SudokuCopyWith(Sudoku value, $Res Function(Sudoku) then) =
      _$SudokuCopyWithImpl<$Res>;
  $Res call(
      {BuiltMap<SudokuIndex, SudokuValue> cells,
      BuiltSet<SudokuIndex> conflicts,
      SudokuIndex selected,
      BuiltSet<SudokuIndex> highlighted});
}

/// @nodoc
class _$SudokuCopyWithImpl<$Res> implements $SudokuCopyWith<$Res> {
  _$SudokuCopyWithImpl(this._value, this._then);

  final Sudoku _value;
  // ignore: unused_field
  final $Res Function(Sudoku) _then;

  @override
  $Res call({
    Object cells = freezed,
    Object conflicts = freezed,
    Object selected = freezed,
    Object highlighted = freezed,
  }) {
    return _then(_value.copyWith(
      cells: cells == freezed
          ? _value.cells
          : cells as BuiltMap<SudokuIndex, SudokuValue>,
      conflicts: conflicts == freezed
          ? _value.conflicts
          : conflicts as BuiltSet<SudokuIndex>,
      selected: selected == freezed ? _value.selected : selected as SudokuIndex,
      highlighted: highlighted == freezed
          ? _value.highlighted
          : highlighted as BuiltSet<SudokuIndex>,
    ));
  }
}

/// @nodoc
abstract class _$SudokuCopyWith<$Res> implements $SudokuCopyWith<$Res> {
  factory _$SudokuCopyWith(_Sudoku value, $Res Function(_Sudoku) then) =
      __$SudokuCopyWithImpl<$Res>;
  @override
  $Res call(
      {BuiltMap<SudokuIndex, SudokuValue> cells,
      BuiltSet<SudokuIndex> conflicts,
      SudokuIndex selected,
      BuiltSet<SudokuIndex> highlighted});
}

/// @nodoc
class __$SudokuCopyWithImpl<$Res> extends _$SudokuCopyWithImpl<$Res>
    implements _$SudokuCopyWith<$Res> {
  __$SudokuCopyWithImpl(_Sudoku _value, $Res Function(_Sudoku) _then)
      : super(_value, (v) => _then(v as _Sudoku));

  @override
  _Sudoku get _value => super._value as _Sudoku;

  @override
  $Res call({
    Object cells = freezed,
    Object conflicts = freezed,
    Object selected = freezed,
    Object highlighted = freezed,
  }) {
    return _then(_Sudoku(
      cells: cells == freezed
          ? _value.cells
          : cells as BuiltMap<SudokuIndex, SudokuValue>,
      conflicts: conflicts == freezed
          ? _value.conflicts
          : conflicts as BuiltSet<SudokuIndex>,
      selected: selected == freezed ? _value.selected : selected as SudokuIndex,
      highlighted: highlighted == freezed
          ? _value.highlighted
          : highlighted as BuiltSet<SudokuIndex>,
    ));
  }
}

/// @nodoc
class _$_Sudoku extends _Sudoku {
  _$_Sudoku({this.cells, this.conflicts, this.selected, this.highlighted})
      : assert(cells.length == 81),
        super._();

  @override
  final BuiltMap<SudokuIndex, SudokuValue> cells;
  @override
  final BuiltSet<SudokuIndex> conflicts;
  @override
  final SudokuIndex selected;
  @override
  final BuiltSet<SudokuIndex> highlighted;

  @override
  String toString() {
    return 'Sudoku(cells: $cells, conflicts: $conflicts, selected: $selected, highlighted: $highlighted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sudoku &&
            (identical(other.cells, cells) ||
                const DeepCollectionEquality().equals(other.cells, cells)) &&
            (identical(other.conflicts, conflicts) ||
                const DeepCollectionEquality()
                    .equals(other.conflicts, conflicts)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.highlighted, highlighted) ||
                const DeepCollectionEquality()
                    .equals(other.highlighted, highlighted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cells) ^
      const DeepCollectionEquality().hash(conflicts) ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(highlighted);

  @override
  _$SudokuCopyWith<_Sudoku> get copyWith =>
      __$SudokuCopyWithImpl<_Sudoku>(this, _$identity);
}

abstract class _Sudoku extends Sudoku {
  _Sudoku._() : super._();
  factory _Sudoku(
      {BuiltMap<SudokuIndex, SudokuValue> cells,
      BuiltSet<SudokuIndex> conflicts,
      SudokuIndex selected,
      BuiltSet<SudokuIndex> highlighted}) = _$_Sudoku;

  @override
  BuiltMap<SudokuIndex, SudokuValue> get cells;
  @override
  BuiltSet<SudokuIndex> get conflicts;
  @override
  SudokuIndex get selected;
  @override
  BuiltSet<SudokuIndex> get highlighted;
  @override
  _$SudokuCopyWith<_Sudoku> get copyWith;
}
