import 'package:calculadora_imc/consts.dart';
import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  final String title;
  final GestureTapCallback onPressed;
  // ignore: use_key_in_widget_constructors
  const ButtonAction({
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: .center,
        color: kColorContainerBottom,
        width: double.infinity,
        height: kHeightContainerBottom,
        margin: .only(top: 5),
        padding: .only(bottom: 10),
        child: Text(title, style: kLargeButtonTextStyle),
      ),
    );
  }
}
