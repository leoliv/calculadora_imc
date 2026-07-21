import 'package:calculadora_imc/components/button_action.dart';
import 'package:calculadora_imc/consts.dart';
import 'package:calculadora_imc/components/standard_card.dart';
import 'package:flutter/material.dart';

class PageResults extends StatelessWidget {
  final String resultImc;
  final String resultText;
  final String interpret;
  final Color resultColor;
  final Color sex;
  const PageResults({
    super.key,
    required this.resultImc,
    required this.resultText,
    required this.interpret,
    required this.resultColor,
    required this.sex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CALCULADORA IMC")),
      body: Column(
        mainAxisAlignment: .spaceEvenly,
        crossAxisAlignment: .stretch,
        children: [
          Expanded(
            child: Container(
              padding: .all(15),
              alignment: .bottomStart,
              child: Text(
                "RESULTADO",
                style: kResultTextStyle.copyWith(
                  color: sex,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: StandardCard(
              color: kActiveColorStandardCard,
              onTap: () {},
              child: Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle.copyWith(
                      color: resultColor,
                    ),
                  ),
                  Text(
                    resultImc.toUpperCase(),
                    style: kImcTextStyle,
                  ),
                  Text(
                    interpret.toUpperCase(),
                    style: kBodyTextStyle,
                    textAlign: .center,
                  ),
                ],
              ),
            ),
          ),
          ButtonAction(
            title: "RECALCULAR",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
