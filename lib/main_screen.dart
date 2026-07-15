import 'package:calculadora_imc/around_button.dart';
import 'package:calculadora_imc/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'content_icon.dart';
import 'standard_card.dart';

enum Sex { male, female, none }

enum Sinal { plus, minus }

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
                  child: StandardCard(
                    onTap: () {
                      setState(() {
                        colorSelected = Sex.male;
                      });
                    },
                    color: colorSelected == Sex.male
                        ? kActiveColorStandardCard
                        : kInactiveColorStandardCard,
                    child: ContentIcon(
                      icon: FontAwesomeIcons.mars,
                      textName: 'MASCULINO',
                    ),
                  ),
                ),
                Expanded(
                  child: StandardCard(
                    onTap: () {
                      setState(() {
                        colorSelected = Sex.female;
                      });
                    },
                    color: colorSelected == Sex.female
                        ? kActiveColorStandardCard
                        : kInactiveColorStandardCard,
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
                    onTap: () {},
                    color: kActiveColorStandardCard,
                    child: Column(
                      mainAxisAlignment: .center,
                      children: [
                        Text(
                          'ALTURA',
                          style: kDescriptionStyle,
                        ),
                        Row(
                          mainAxisAlignment: .center,
                          crossAxisAlignment: .baseline,
                          textBaseline: .alphabetic,
                          children: [
                            Text(
                              kHeightInCm.toString(),
                              style: kLargeNumberStyle,
                            ),
                            Text(
                              'cm',
                              style: kDescriptionStyle,
                            ),
                          ],
                        ),
                        Slider(
                          activeColor:
                              kColorContainerBottom,
                          inactiveColor:
                              kInactiveColorStandardCard,
                          onChanged: (double newValue) => {
                            setState(() {
                              kHeightInCm = newValue
                                  .round();
                            }),
                          },
                          min: 120,
                          max: 220,
                          value: kHeightInCm.toDouble(),
                        ),
                      ],
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
                    onTap: () {},
                    color: kActiveColorStandardCard,
                    child: Column(
                      mainAxisAlignment: .center,
                      children: [
                        Text(
                          "PESO",
                          style: kDescriptionStyle,
                        ),
                        Text(
                          kWeightInKg.toString(),
                          style: kLargeNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: .center,
                          children: [
                            AroundButton(
                              onPressed: () => {
                                setState(() {
                                  kWeightInKg < 500
                                      ? kWeightInKg++
                                      : null;
                                }),
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                            SizedBox(width: 10),
                            AroundButton(
                              onPressed: () => {
                                setState(() {
                                  kWeightInKg > 0
                                      ? kWeightInKg--
                                      : null;
                                }),
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: StandardCard(
                    onTap: () {},
                    color: kActiveColorStandardCard,
                    child: Column(
                      mainAxisAlignment: .center,
                      children: [
                        Text(
                          "IDADE",
                          style: kDescriptionStyle,
                        ),
                        Text(
                          kAge.toString(),
                          style: kLargeNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: .center,
                          children: [
                            AroundButton(
                              onPressed: () => {
                                setState(() {
                                  kAge < 120
                                      ? kAge++
                                      : null;
                                }),
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                            SizedBox(width: 10),
                            AroundButton(
                              onPressed: () => {
                                setState(() {
                                  kAge > 0 ? kAge-- : null;
                                }),
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kColorContainerBottom,
            width: double.infinity,
            height: kHeightContainerBottom,
            margin: .only(top: 10),
          ),
        ],
      ),
    );
  }
}
