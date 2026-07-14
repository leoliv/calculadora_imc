import 'package:flutter/material.dart';

class StandardCard extends StatelessWidget {
  const StandardCard({
    required this.color,
    required this.child,
    super.key,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: .circular(30),
      ),
      child: child,
    );
  }
}
