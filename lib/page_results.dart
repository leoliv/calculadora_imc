import 'package:calculadora_imc/consts.dart';
import 'package:calculadora_imc/standard_card.dart';
import 'package:flutter/material.dart';

class PageResults extends StatelessWidget {
  const PageResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CALCULADORA IMC")),
      body: Column(
        children: [
          Text(
            "RESULTADO",
            style: TextStyle(
              fontSize: 30,
              fontWeight: .w700,
            ),
            textAlign: .left,
          ),
          Expanded(
            child: StandardCard(
              color: kActiveColorStandardCard,
              onTap: () {},
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .stretch,
                children: [
                  Text(
                    "DESCRIÇÃO DO RESULTADO",
                    textAlign: .center,
                  ),
                  Text("QUANTIDADE", textAlign: .center),
                  Text("MENSAGEM", textAlign: .center),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: Container(
              alignment: .center,
              color: kColorContainerBottom,
              width: double.infinity,
              height: kHeightContainerBottom,
              margin: .only(top: 10),
              child: Text(
                "RECALCULAR",
                style: kLargeNumberStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
