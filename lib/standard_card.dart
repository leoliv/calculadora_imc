import 'package:flutter/material.dart';

class StandardCard extends StatelessWidget {
  const StandardCard({
    super.key,
    required this.color,
    required this.onTap,
    required this.child,
  });

  final Color color;
  final Widget? child;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: .all(14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: .circular(30),
        ),
        child: child,
      ),
    );
  }
}
