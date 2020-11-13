import 'package:built_collection/built_collection.dart';
import 'package:response_builder/response_builder.dart';

import 'SudokuValue.dart';
import 'SudokuPos.dart';

class SudokuBoard extends HistoryValueNotifier<BuiltMap<SudokuPos, SudokuValue>> {
  SudokuBoard() : super(31);
}
