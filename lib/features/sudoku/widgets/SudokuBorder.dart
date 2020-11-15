import 'package:flutter/material.dart';
import 'package:response_builder/response_builder.dart';

class SudokuBorder extends StatelessWidget with BuildWithBuilder {
  final Widget child;
  final double aspectRatio;
  final Color borderColor;
  final double borderWidth;

  SudokuBorder({
    Key key,
    this.aspectRatio: 1.0,
    this.borderColor: Colors.black,
    this.borderWidth: 1.0,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) => _buildAspect(_buildBorder(child));

  Widget _buildAspect(Widget child) {
    if (aspectRatio == null || aspectRatio == 0) return child;

    return AspectRatio(aspectRatio: aspectRatio, child: child);
  }

  Widget _buildBorder(Widget child) {
    if (borderWidth == null || borderWidth == 0) return child;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: child,
    );
  }
}
