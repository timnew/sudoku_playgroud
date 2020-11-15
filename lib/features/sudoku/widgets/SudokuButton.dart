import 'package:flutter/material.dart';

class SudokuButton extends StatelessWidget {
  final double aspectRatio;
  final Widget child;
  final Color color;
  final VoidCallback onPressed;

  const SudokuButton({
    Key key,
    this.aspectRatio: 1,
    this.color,
    this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: aspectRatio,
        child: Material(
          color: color,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(),
          ),
          child: InkWell(
            splashColor: Colors.blue[200],
            onTap: this.onPressed,
            child: Center(child: child),
          ),
        ),
      );
}

class ToggleButton extends StatelessWidget {
  final double aspectRatio;

  final bool selected;
  final Widget child;
  final VoidCallback onPressed;

  const ToggleButton({
    Key key,
    this.aspectRatio: 1,
    @required this.selected,
    @required this.child,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SudokuButton(
        aspectRatio: aspectRatio,
        onPressed: this.onPressed,
        child: child,
        color: selected ? Colors.blue[100] : null,
      );
}
