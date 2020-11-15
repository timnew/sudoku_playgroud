// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'UserOperation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserOperationTearOff {
  const _$UserOperationTearOff();

// ignore: unused_element
  SelectOperation select() {
    return SelectOperation();
  }

// ignore: unused_element
  FillOperation fill(int number) {
    return FillOperation(
      number,
    );
  }

// ignore: unused_element
  EraseOperation erase() {
    return EraseOperation();
  }

// ignore: unused_element
  MarkAllOperation markAll() {
    return MarkAllOperation();
  }

// ignore: unused_element
  MarkOperation mark(int number) {
    return MarkOperation(
      number,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserOperation = _$UserOperationTearOff();

/// @nodoc
mixin _$UserOperation {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result select(),
    @required Result fill(int number),
    @required Result erase(),
    @required Result markAll(),
    @required Result mark(int number),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result select(),
    Result fill(int number),
    Result erase(),
    Result markAll(),
    Result mark(int number),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result select(SelectOperation value),
    @required Result fill(FillOperation value),
    @required Result erase(EraseOperation value),
    @required Result markAll(MarkAllOperation value),
    @required Result mark(MarkOperation value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result select(SelectOperation value),
    Result fill(FillOperation value),
    Result erase(EraseOperation value),
    Result markAll(MarkAllOperation value),
    Result mark(MarkOperation value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserOperationCopyWith<$Res> {
  factory $UserOperationCopyWith(
          UserOperation value, $Res Function(UserOperation) then) =
      _$UserOperationCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserOperationCopyWithImpl<$Res>
    implements $UserOperationCopyWith<$Res> {
  _$UserOperationCopyWithImpl(this._value, this._then);

  final UserOperation _value;
  // ignore: unused_field
  final $Res Function(UserOperation) _then;
}

/// @nodoc
abstract class $SelectOperationCopyWith<$Res> {
  factory $SelectOperationCopyWith(
          SelectOperation value, $Res Function(SelectOperation) then) =
      _$SelectOperationCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectOperationCopyWithImpl<$Res>
    extends _$UserOperationCopyWithImpl<$Res>
    implements $SelectOperationCopyWith<$Res> {
  _$SelectOperationCopyWithImpl(
      SelectOperation _value, $Res Function(SelectOperation) _then)
      : super(_value, (v) => _then(v as SelectOperation));

  @override
  SelectOperation get _value => super._value as SelectOperation;
}

/// @nodoc
class _$SelectOperation extends SelectOperation {
  _$SelectOperation() : super._();

  @override
  String toString() {
    return 'UserOperation.select()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectOperation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result select(),
    @required Result fill(int number),
    @required Result erase(),
    @required Result markAll(),
    @required Result mark(int number),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return select();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result select(),
    Result fill(int number),
    Result erase(),
    Result markAll(),
    Result mark(int number),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result select(SelectOperation value),
    @required Result fill(FillOperation value),
    @required Result erase(EraseOperation value),
    @required Result markAll(MarkAllOperation value),
    @required Result mark(MarkOperation value),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return select(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result select(SelectOperation value),
    Result fill(FillOperation value),
    Result erase(EraseOperation value),
    Result markAll(MarkAllOperation value),
    Result mark(MarkOperation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class SelectOperation extends UserOperation {
  SelectOperation._() : super._();
  factory SelectOperation() = _$SelectOperation;
}

/// @nodoc
abstract class $FillOperationCopyWith<$Res> {
  factory $FillOperationCopyWith(
          FillOperation value, $Res Function(FillOperation) then) =
      _$FillOperationCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class _$FillOperationCopyWithImpl<$Res>
    extends _$UserOperationCopyWithImpl<$Res>
    implements $FillOperationCopyWith<$Res> {
  _$FillOperationCopyWithImpl(
      FillOperation _value, $Res Function(FillOperation) _then)
      : super(_value, (v) => _then(v as FillOperation));

  @override
  FillOperation get _value => super._value as FillOperation;

  @override
  $Res call({
    Object number = freezed,
  }) {
    return _then(FillOperation(
      number == freezed ? _value.number : number as int,
    ));
  }
}

/// @nodoc
class _$FillOperation extends FillOperation {
  _$FillOperation(this.number)
      : assert(number != null),
        super._();

  @override
  final int number;

  @override
  String toString() {
    return 'UserOperation.fill(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FillOperation &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @override
  $FillOperationCopyWith<FillOperation> get copyWith =>
      _$FillOperationCopyWithImpl<FillOperation>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result select(),
    @required Result fill(int number),
    @required Result erase(),
    @required Result markAll(),
    @required Result mark(int number),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return fill(number);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result select(),
    Result fill(int number),
    Result erase(),
    Result markAll(),
    Result mark(int number),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fill != null) {
      return fill(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result select(SelectOperation value),
    @required Result fill(FillOperation value),
    @required Result erase(EraseOperation value),
    @required Result markAll(MarkAllOperation value),
    @required Result mark(MarkOperation value),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return fill(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result select(SelectOperation value),
    Result fill(FillOperation value),
    Result erase(EraseOperation value),
    Result markAll(MarkAllOperation value),
    Result mark(MarkOperation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fill != null) {
      return fill(this);
    }
    return orElse();
  }
}

abstract class FillOperation extends UserOperation {
  FillOperation._() : super._();
  factory FillOperation(int number) = _$FillOperation;

  int get number;
  $FillOperationCopyWith<FillOperation> get copyWith;
}

/// @nodoc
abstract class $EraseOperationCopyWith<$Res> {
  factory $EraseOperationCopyWith(
          EraseOperation value, $Res Function(EraseOperation) then) =
      _$EraseOperationCopyWithImpl<$Res>;
}

/// @nodoc
class _$EraseOperationCopyWithImpl<$Res>
    extends _$UserOperationCopyWithImpl<$Res>
    implements $EraseOperationCopyWith<$Res> {
  _$EraseOperationCopyWithImpl(
      EraseOperation _value, $Res Function(EraseOperation) _then)
      : super(_value, (v) => _then(v as EraseOperation));

  @override
  EraseOperation get _value => super._value as EraseOperation;
}

/// @nodoc
class _$EraseOperation extends EraseOperation {
  _$EraseOperation() : super._();

  @override
  String toString() {
    return 'UserOperation.erase()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EraseOperation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result select(),
    @required Result fill(int number),
    @required Result erase(),
    @required Result markAll(),
    @required Result mark(int number),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return erase();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result select(),
    Result fill(int number),
    Result erase(),
    Result markAll(),
    Result mark(int number),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (erase != null) {
      return erase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result select(SelectOperation value),
    @required Result fill(FillOperation value),
    @required Result erase(EraseOperation value),
    @required Result markAll(MarkAllOperation value),
    @required Result mark(MarkOperation value),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return erase(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result select(SelectOperation value),
    Result fill(FillOperation value),
    Result erase(EraseOperation value),
    Result markAll(MarkAllOperation value),
    Result mark(MarkOperation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (erase != null) {
      return erase(this);
    }
    return orElse();
  }
}

abstract class EraseOperation extends UserOperation {
  EraseOperation._() : super._();
  factory EraseOperation() = _$EraseOperation;
}

/// @nodoc
abstract class $MarkAllOperationCopyWith<$Res> {
  factory $MarkAllOperationCopyWith(
          MarkAllOperation value, $Res Function(MarkAllOperation) then) =
      _$MarkAllOperationCopyWithImpl<$Res>;
}

/// @nodoc
class _$MarkAllOperationCopyWithImpl<$Res>
    extends _$UserOperationCopyWithImpl<$Res>
    implements $MarkAllOperationCopyWith<$Res> {
  _$MarkAllOperationCopyWithImpl(
      MarkAllOperation _value, $Res Function(MarkAllOperation) _then)
      : super(_value, (v) => _then(v as MarkAllOperation));

  @override
  MarkAllOperation get _value => super._value as MarkAllOperation;
}

/// @nodoc
class _$MarkAllOperation extends MarkAllOperation {
  _$MarkAllOperation() : super._();

  @override
  String toString() {
    return 'UserOperation.markAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MarkAllOperation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result select(),
    @required Result fill(int number),
    @required Result erase(),
    @required Result markAll(),
    @required Result mark(int number),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return markAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result select(),
    Result fill(int number),
    Result erase(),
    Result markAll(),
    Result mark(int number),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markAll != null) {
      return markAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result select(SelectOperation value),
    @required Result fill(FillOperation value),
    @required Result erase(EraseOperation value),
    @required Result markAll(MarkAllOperation value),
    @required Result mark(MarkOperation value),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return markAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result select(SelectOperation value),
    Result fill(FillOperation value),
    Result erase(EraseOperation value),
    Result markAll(MarkAllOperation value),
    Result mark(MarkOperation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markAll != null) {
      return markAll(this);
    }
    return orElse();
  }
}

abstract class MarkAllOperation extends UserOperation {
  MarkAllOperation._() : super._();
  factory MarkAllOperation() = _$MarkAllOperation;
}

/// @nodoc
abstract class $MarkOperationCopyWith<$Res> {
  factory $MarkOperationCopyWith(
          MarkOperation value, $Res Function(MarkOperation) then) =
      _$MarkOperationCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class _$MarkOperationCopyWithImpl<$Res>
    extends _$UserOperationCopyWithImpl<$Res>
    implements $MarkOperationCopyWith<$Res> {
  _$MarkOperationCopyWithImpl(
      MarkOperation _value, $Res Function(MarkOperation) _then)
      : super(_value, (v) => _then(v as MarkOperation));

  @override
  MarkOperation get _value => super._value as MarkOperation;

  @override
  $Res call({
    Object number = freezed,
  }) {
    return _then(MarkOperation(
      number == freezed ? _value.number : number as int,
    ));
  }
}

/// @nodoc
class _$MarkOperation extends MarkOperation {
  _$MarkOperation(this.number)
      : assert(number != null),
        super._();

  @override
  final int number;

  @override
  String toString() {
    return 'UserOperation.mark(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkOperation &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @override
  $MarkOperationCopyWith<MarkOperation> get copyWith =>
      _$MarkOperationCopyWithImpl<MarkOperation>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result select(),
    @required Result fill(int number),
    @required Result erase(),
    @required Result markAll(),
    @required Result mark(int number),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return mark(number);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result select(),
    Result fill(int number),
    Result erase(),
    Result markAll(),
    Result mark(int number),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mark != null) {
      return mark(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result select(SelectOperation value),
    @required Result fill(FillOperation value),
    @required Result erase(EraseOperation value),
    @required Result markAll(MarkAllOperation value),
    @required Result mark(MarkOperation value),
  }) {
    assert(select != null);
    assert(fill != null);
    assert(erase != null);
    assert(markAll != null);
    assert(mark != null);
    return mark(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result select(SelectOperation value),
    Result fill(FillOperation value),
    Result erase(EraseOperation value),
    Result markAll(MarkAllOperation value),
    Result mark(MarkOperation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mark != null) {
      return mark(this);
    }
    return orElse();
  }
}

abstract class MarkOperation extends UserOperation {
  MarkOperation._() : super._();
  factory MarkOperation(int number) = _$MarkOperation;

  int get number;
  $MarkOperationCopyWith<MarkOperation> get copyWith;
}
