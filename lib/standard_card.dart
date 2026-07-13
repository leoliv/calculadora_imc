import 'package:flutter/material.dart';

class StandardCard extends StatelessWidget {
  const StandardCard({
    required this.color,
    this.child,
    super.key,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
