import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserOperation.freezed.dart';

@freezed
abstract class UserOperation implements _$UserOperation {
  UserOperation._();

  factory UserOperation.select() = SelectOperation;

  factory UserOperation.fill(int number) = FillOperation;

  factory UserOperation.eraseNumber(int number) = EraseNumberOperation;

  factory UserOperation.erase() = EraseOperation;

  factory UserOperation.markAll() = MarkAllOperation;

  factory UserOperation.mark(int number) = MarkOperation;

  factory UserOperation.eraseMark(int number) = EraseMarkOpeartion;

  factory UserOperation.eraseAllMarks() = EraseAllMarksOperation;

  bool numberEnabled(int number) => maybeMap(
        fill: (o) => o.number == number,
        eraseNumber: (o) => o.number == number,
        mark: (o) => o.number == number,
        eraseMark: (o) => o.number == number,
        orElse: () => false,
      );

  bool eraseEnabled() => maybeMap(
        erase: (_) => true,
        eraseNumber: (_) => true,
        eraseMark: (_) => true,
        eraseAllMarks: (_) => true,
        orElse: () => false,
      );

  bool markEnabled() => maybeMap(
        markAll: (_) => true,
        mark: (_) => true,
        eraseMark: (_) => true,
        eraseAllMarks: (_) => true,
        orElse: () => false,
      );

  UserOperation onNumberPressed(int number) => map(
        select: (_) => UserOperation.fill(number),
        erase: (_) => UserOperation.eraseNumber(number),
        eraseNumber: (o) => o.number == number
            ? UserOperation.erase()
            : UserOperation.eraseNumber(number),
        markAll: (_) => UserOperation.mark(number),
        mark: (o) => o.number == number
            ? UserOperation.markAll()
            : UserOperation.mark(number),
        fill: (o) => o.number == number
            ? UserOperation.select()
            : UserOperation.fill(number),
        eraseAllMarks: (_) => UserOperation.eraseMark(number),
        eraseMark: (o) => o.number == number
            ? UserOperation.eraseAllMarks()
            : UserOperation.eraseMark(number),
      );

  UserOperation onEnrasePressed() => map(
        select: (_) => UserOperation.erase(),
        fill: (o) => UserOperation.eraseNumber(o.number),
        eraseNumber: (o) => UserOperation.fill(o.number),
        erase: (_) => UserOperation.select(),
        markAll: (_) => UserOperation.eraseAllMarks(),
        mark: (o) => UserOperation.eraseMark(o.number),
        eraseMark: (o) => UserOperation.mark(o.number),
        eraseAllMarks: (_) => UserOperation.markAll(),
      );

  UserOperation onMarkPressed() => map(
        select: (_) => UserOperation.markAll(),
        fill: (o) => UserOperation.mark(o.number),
        eraseNumber: (o) => UserOperation.eraseMark(o.number),
        erase: (_) => UserOperation.eraseAllMarks(),
        markAll: (_) => UserOperation.select(),
        mark: (o) => UserOperation.fill(o.number),
        eraseMark: (o) => UserOperation.eraseNumber(o.number),
        eraseAllMarks: (_) => UserOperation.erase(),
      );
}
