import 'package:calculadora_imc/pages/main_screen.dart';
import 'package:calculadora_imc/pages/page_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'PageResults uses the provided result color',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PageResults(
            resultImc: '18.1',
            resultText: 'Peso Normal',
            interpret: 'Tudo certo',
            resultColor: Colors.lightGreen,
            sex: Sex.none,
          ),
        ),
      );

      final titleText = tester.widget<Text>(
        find.text('PESO NORMAL'),
      );
      expect(titleText.style?.color, Colors.lightGreen);
    },
  );
}
