import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AroundButton extends StatelessWidget {
  const AroundButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final FaIconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0XFF7E7E7E),
      elevation: 2,
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      child: FaIcon(icon),
    );
  }
}
