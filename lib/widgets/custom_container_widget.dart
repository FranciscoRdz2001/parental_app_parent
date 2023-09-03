import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? padding;
  const CustomContainerWidget({
    super.key,
    this.child,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(padding ?? 16)),
        color: color ?? Theme.of(context).cardColor,
      ),
      child: child,
    );
  }
}
