import 'package:flutter/material.dart';

class Corner extends StatelessWidget {
  final dynamic corner;
  final Widget? child;
  const Corner({
    super.key,
    required this.corner,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadius.all(Radius.circular(double.parse(corner.toString()))),
      child: child,
    );
  }
}
