import 'package:flutter/material.dart' hide ValueWidgetBuilder;

import 'package:response_builder/response_builder.dart';

class SudokuGrid<T> extends StatelessWidget with BuildWithBuilder {
  final TableBorder border;
  final T Function(int index) selector;
  final ValueWidgetBuilder<T> builder;
  final TransitionBuilder containerBuilder;

  const SudokuGrid({
    Key key,
    this.border,
    @required this.selector,
    @required this.builder,
    this.containerBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Table(
        border: border,
        children: List.generate(
          3,
          (row) => _buildRow(context, row),
          growable: false,
        ),
      );

  TableRow _buildRow(BuildContext context, int row) => TableRow(
        children: List.generate(
          3,
          (col) => _buildCell(context, row, col) ?? Container(),
          growable: false,
        ),
      );

  Widget _buildCell(BuildContext context, int row, int col) => buildWithBuilder(
        context,
        containerBuilder,
        builder(context, selector(row * 3 + col)),
      );
}
