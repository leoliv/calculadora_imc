import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'content_icon.dart';
import 'standard_card.dart';

const heightContainerBottom = 80.0;
const colorActiveCardStandard = Color(0xff9e9e9e);
const colorContainerBottom = Colors.deepOrange;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
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
                  child: StandardCard(
                    color: colorActiveCardStandard,
                    child: ContentIcon(
                      icon: FontAwesomeIcons.mars,
                      textName: 'MASCULINO',
                    ),
                  ),
                ),
                Expanded(
                  child: StandardCard(
                    color: colorActiveCardStandard,
                    child: ContentIcon(
                      icon: FontAwesomeIcons.venus,
                      textName: 'FEMININO',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: StandardCard(
                    color: colorActiveCardStandard,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: StandardCard(
                    color: colorActiveCardStandard,
                  ),
                ),
                Expanded(
                  child: StandardCard(
                    color: colorActiveCardStandard,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: colorContainerBottom,
            width: double.infinity,
            height: heightContainerBottom,
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
