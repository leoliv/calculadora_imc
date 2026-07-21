import 'package:calculadora_imc/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContentIcon extends StatelessWidget {
  const ContentIcon({
    super.key,
    required this.icon,
    this.size = 95.0,
    this.spaceWordsHeight = 15.0,
    required this.textName,
    this.fontSize = 20.0,
  });

  final FaIconData icon;
  final double size;
  final double spaceWordsHeight;
  final String textName;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        FaIcon(icon, size: size),
        SizedBox(height: spaceWordsHeight),
        Text(textName, style: kDescriptionStyle),
      ],
    );
  }
}
