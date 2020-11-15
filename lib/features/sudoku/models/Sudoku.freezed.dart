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
      {@nullable SudokuPos cursor,
      @nullable BuiltSet<SudokuPos> impactZone,
      BuiltList<SudokuValue> cells,
      BuiltSetMultimap<SudokuPos, SudokuPos> conflicts,
      int filledCellCount}) {
    return _Sudoku(
      cursor: cursor,
      impactZone: impactZone,
      cells: cells,
      conflicts: conflicts,
      filledCellCount: filledCellCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Sudoku = _$SudokuTearOff();

/// @nodoc
mixin _$Sudoku {
  @nullable
  SudokuPos get cursor;
  @nullable
  BuiltSet<SudokuPos> get impactZone;
  BuiltList<SudokuValue> get cells;
  BuiltSetMultimap<SudokuPos, SudokuPos> get conflicts;
  int get filledCellCount;

  $SudokuCopyWith<Sudoku> get copyWith;
}

/// @nodoc
abstract class $SudokuCopyWith<$Res> {
  factory $SudokuCopyWith(Sudoku value, $Res Function(Sudoku) then) =
      _$SudokuCopyWithImpl<$Res>;
  $Res call(
      {@nullable SudokuPos cursor,
      @nullable BuiltSet<SudokuPos> impactZone,
      BuiltList<SudokuValue> cells,
      BuiltSetMultimap<SudokuPos, SudokuPos> conflicts,
      int filledCellCount});
}

/// @nodoc
class _$SudokuCopyWithImpl<$Res> implements $SudokuCopyWith<$Res> {
  _$SudokuCopyWithImpl(this._value, this._then);

  final Sudoku _value;
  // ignore: unused_field
  final $Res Function(Sudoku) _then;

  @override
  $Res call({
    Object cursor = freezed,
    Object impactZone = freezed,
    Object cells = freezed,
    Object conflicts = freezed,
    Object filledCellCount = freezed,
  }) {
    return _then(_value.copyWith(
      cursor: cursor == freezed ? _value.cursor : cursor as SudokuPos,
      impactZone: impactZone == freezed
          ? _value.impactZone
          : impactZone as BuiltSet<SudokuPos>,
      cells: cells == freezed ? _value.cells : cells as BuiltList<SudokuValue>,
      conflicts: conflicts == freezed
          ? _value.conflicts
          : conflicts as BuiltSetMultimap<SudokuPos, SudokuPos>,
      filledCellCount: filledCellCount == freezed
          ? _value.filledCellCount
          : filledCellCount as int,
    ));
  }
}

/// @nodoc
abstract class _$SudokuCopyWith<$Res> implements $SudokuCopyWith<$Res> {
  factory _$SudokuCopyWith(_Sudoku value, $Res Function(_Sudoku) then) =
      __$SudokuCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable SudokuPos cursor,
      @nullable BuiltSet<SudokuPos> impactZone,
      BuiltList<SudokuValue> cells,
      BuiltSetMultimap<SudokuPos, SudokuPos> conflicts,
      int filledCellCount});
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
    Object cursor = freezed,
    Object impactZone = freezed,
    Object cells = freezed,
    Object conflicts = freezed,
    Object filledCellCount = freezed,
  }) {
    return _then(_Sudoku(
      cursor: cursor == freezed ? _value.cursor : cursor as SudokuPos,
      impactZone: impactZone == freezed
          ? _value.impactZone
          : impactZone as BuiltSet<SudokuPos>,
      cells: cells == freezed ? _value.cells : cells as BuiltList<SudokuValue>,
      conflicts: conflicts == freezed
          ? _value.conflicts
          : conflicts as BuiltSetMultimap<SudokuPos, SudokuPos>,
      filledCellCount: filledCellCount == freezed
          ? _value.filledCellCount
          : filledCellCount as int,
    ));
  }
}

/// @nodoc
class _$_Sudoku extends _Sudoku {
  _$_Sudoku(
      {@nullable this.cursor,
      @nullable this.impactZone,
      this.cells,
      this.conflicts,
      this.filledCellCount})
      : assert(cells.length == 81),
        super._();

  @override
  @nullable
  final SudokuPos cursor;
  @override
  @nullable
  final BuiltSet<SudokuPos> impactZone;
  @override
  final BuiltList<SudokuValue> cells;
  @override
  final BuiltSetMultimap<SudokuPos, SudokuPos> conflicts;
  @override
  final int filledCellCount;

  @override
  String toString() {
    return 'Sudoku(cursor: $cursor, impactZone: $impactZone, cells: $cells, conflicts: $conflicts, filledCellCount: $filledCellCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sudoku &&
            (identical(other.cursor, cursor) ||
                const DeepCollectionEquality().equals(other.cursor, cursor)) &&
            (identical(other.impactZone, impactZone) ||
                const DeepCollectionEquality()
                    .equals(other.impactZone, impactZone)) &&
            (identical(other.cells, cells) ||
                const DeepCollectionEquality().equals(other.cells, cells)) &&
            (identical(other.conflicts, conflicts) ||
                const DeepCollectionEquality()
                    .equals(other.conflicts, conflicts)) &&
            (identical(other.filledCellCount, filledCellCount) ||
                const DeepCollectionEquality()
                    .equals(other.filledCellCount, filledCellCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cursor) ^
      const DeepCollectionEquality().hash(impactZone) ^
      const DeepCollectionEquality().hash(cells) ^
      const DeepCollectionEquality().hash(conflicts) ^
      const DeepCollectionEquality().hash(filledCellCount);

  @override
  _$SudokuCopyWith<_Sudoku> get copyWith =>
      __$SudokuCopyWithImpl<_Sudoku>(this, _$identity);
}

abstract class _Sudoku extends Sudoku {
  _Sudoku._() : super._();
  factory _Sudoku(
      {@nullable SudokuPos cursor,
      @nullable BuiltSet<SudokuPos> impactZone,
      BuiltList<SudokuValue> cells,
      BuiltSetMultimap<SudokuPos, SudokuPos> conflicts,
      int filledCellCount}) = _$_Sudoku;

  @override
  @nullable
  SudokuPos get cursor;
  @override
  @nullable
  BuiltSet<SudokuPos> get impactZone;
  @override
  BuiltList<SudokuValue> get cells;
  @override
  BuiltSetMultimap<SudokuPos, SudokuPos> get conflicts;
  @override
  int get filledCellCount;
  @override
  _$SudokuCopyWith<_Sudoku> get copyWith;
}
