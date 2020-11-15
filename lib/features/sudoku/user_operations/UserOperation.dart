import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserOperation.freezed.dart';

@freezed
abstract class UserOperation implements _$UserOperation {
  UserOperation._();

  factory UserOperation.select() = SelectOperation;

  factory UserOperation.fill(int number) = FillOperation;

  factory UserOperation.erase() = EraseOperation;

  factory UserOperation.markAll() = MarkAllOperation;

  factory UserOperation.mark(int number) = MarkOperation;

  bool numberEnabled(int number) => maybeMap(
        fill: (o) => o.number == number,
        mark: (o) => o.number == number,
        orElse: () => false,
      );

  bool eraseEnabled() => maybeMap(
        erase: (_) => true,
        orElse: () => false,
      );

  bool markEnabled() => maybeMap(
        markAll: (_) => true,
        mark: (_) => true,
        orElse: () => false,
      );

  UserOperation onNumberPressed(int number) => map(
        select: (_) => UserOperation.fill(number),
        erase: (_) => UserOperation.fill(number),
        markAll: (_) => UserOperation.mark(number),
        mark: (o) => o.number == number
            ? UserOperation.markAll()
            : UserOperation.mark(number),
        fill: (o) => o.number == number
            ? UserOperation.select()
            : UserOperation.fill(number),
      );

  UserOperation onEnrasePressed() => maybeMap(
        erase: (_) => UserOperation.select(),
        orElse: () => UserOperation.erase(),
      );

  UserOperation onMarkPressed() => map(
        select: (_) => UserOperation.markAll(),
        fill: (o) => UserOperation.mark(o.number),
        erase: (_) => UserOperation.markAll(),
        markAll: (_) => UserOperation.select(),
        mark: (o) => UserOperation.fill(o.number),
      );
}
