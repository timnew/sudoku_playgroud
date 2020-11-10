import 'package:flutter/material.dart' hide ValueWidgetBuilder;

import 'package:response_builder/response_builder.dart';

class SudokuGrid<T> extends StatelessWidget {
  final T Function(int index) selector;
  final ValueWidgetBuilder<T> builder;

  final Color borderColor;
  final double borderWidth;

  const SudokuGrid({
    Key key,
    @required this.selector,
    @required this.builder,
    this.borderColor: Colors.black,
    this.borderWidth: 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Table(
        children: List.generate(3, (row) => _buildRow(context, row), growable: false),
      );

  TableRow _buildRow(BuildContext context, int row) => TableRow(
        children: List.generate(
          3,
          (col) => _buildCell(context, builder(context, selector(row * 3 + col))),
          growable: false,
        ),
      );

  Widget _buildCell(BuildContext context, Widget child) => AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: _buildDecoration(),
          child: child,
        ),
      );

  Decoration _buildDecoration() {
    if (borderWidth == 0) return null;

    return BoxDecoration(
      border: Border.all(
        color: borderColor,
        width: borderWidth,
      ),
    );
  }
}
