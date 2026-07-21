import 'dart:math';

import 'package:calculadora_imc/pages/main_screen.dart';
import 'package:flutter/material.dart';

class ImcCalculator {
  double height;
  int weight;
  double _imc = 0;

  ImcCalculator({this.height = 0, this.weight = 0});

  String calcularImc() {
    _imc = weight / pow(height / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String obterResultado() {
    if (_imc >= 25) {
      return "Acima do Peso";
    } else if (_imc >= 18.5) {
      return "Peso Normal";
    } else {
      return "Abaixo do peso";
    }
  }

  Color obterResultadoColor() {
    if (_imc >= 25) {
      return const Color(0xFFEC2727);
    } else if (_imc >= 18.5) {
      return const Color(0xFF98FF23);
    } else {
      return const Color(0xFFFFFB1F);
    }
  }

  String obterInterpretacao() {
    if (_imc >= 25) {
      return "Você está com o peso acima do normal. Coloque uma rotina de exercicios durante a semana";
    } else if (_imc >= 18.5) {
      return "Excelente! Seu peso está normal!";
    } else {
      return "Você está com o peso muito baixo. Coloque algumas refeições extras a cada 3 horas.";
    }
  }

  Color sexColor(Sex sex) {
    if (sex == Sex.male) {
      return Colors.blue;
    } else if (sex == Sex.female) {
      return const Color(0xFFFF4181);
    } else {
      return Colors.white;
    }
  }
}
