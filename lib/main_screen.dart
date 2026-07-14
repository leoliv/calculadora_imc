import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'content_icon.dart';
import 'standard_card.dart';

const heightContainerBottom = 80.0;
const colorActiveCardStandard = Color(0xff9e9e9e);
const colorInactiveCardStandard = Color(0xFF6B6B6B);
const colorContainerBottom = Colors.deepOrange;

enum Sex { male, female, none }

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  Sex colorSelected = Sex.none;

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
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        colorSelected = Sex.male;
                      }),
                    },
                    child: StandardCard(
                      color: colorSelected == Sex.male
                          ? colorInactiveCardStandard
                          : colorActiveCardStandard,
                      child: ContentIcon(
                        icon: FontAwesomeIcons.mars,
                        textName: 'MASCULINO',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        colorSelected = Sex.female;
                      }),
                    },
                    child: StandardCard(
                      color: colorSelected == Sex.female
                          ? colorInactiveCardStandard
                          : colorActiveCardStandard,
                      child: ContentIcon(
                        icon: FontAwesomeIcons.venus,
                        textName: 'FEMININO',
                      ),
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
                    child: null,
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
                    child: null,
                  ),
                ),
                Expanded(
                  child: StandardCard(
                    color: colorActiveCardStandard,
                    child: null,
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
