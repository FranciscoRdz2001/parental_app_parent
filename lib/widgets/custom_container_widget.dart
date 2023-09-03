import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double padding;
  final double radius;
  final BoxShape shape;
  const CustomContainerWidget({
    super.key,
    this.child,
    this.color,
    this.padding = 8,
    this.radius = 16,
    this.shape = BoxShape.rectangle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: shape != BoxShape.rectangle
            ? null
            : BorderRadius.all(Radius.circular(radius)),
        color: color ?? Theme.of(context).cardColor,
        shape: shape,
      ),
      child: child,
    );
  }
}
