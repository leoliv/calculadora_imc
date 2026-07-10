import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() =>
      _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CALCULADORA IMC')),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    cor: Color(0xff9e9e9e),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: Color(0xff9e9e9e),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    cor: Color(0xff9e9e9e),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    cor: Color(0xff9e9e9e),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: Color(0xff9e9e9e),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartaoPadrao extends StatelessWidget {
  // const CartaoPadrao({super.key});
  const CartaoPadrao({required this.cor, super.key});
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
