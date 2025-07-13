import 'package:bmi_calculator/calculator_bmi.dart';
import 'package:bmi_calculator/components/Bottom_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;
  int height = 180;
  int weight = 60;
  int age = 20;

  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;
  // //1 = male,2 = female
  //
  // //ternary operator / Condition ? DoThisIfTrue (colon): DoThisIfFalse
  //
  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColour == inactiveCardColour) {
  //       maleCardColour = activeCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     } else {
  //       maleCardColour = inactiveCardColour;
  //     }
  //   }
  //   selectedGender == Gender.male && maleCardColour == inactiveCardColour ?  maleCardColour = activeCardColour;
  //       femaleCardColour = inactiveCardColour :  maleCardColour = inactiveCardColour;
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColour == inactiveCardColour) {
  //       femaleCardColour = activeCardColour;
  //       maleCardColour = inactiveCardColour;
  //     } else {
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Icon(FontAwesomeIcons.weightScale, color: Color(0xFF2b2b2b)),
            SizedBox(width: 6.0, height: 6.0),
            Text(
              'Bmi Calculator',
              style: (labelTextstyle.copyWith(fontSize: 18.0)),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFFe8e8e8), //kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('HEIGHT', style: labelTextstyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: labelTextstyle2),
                        const SizedBox(height: 10.0),
                        Text('cm ', style: labelTextstyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        //Sliderthemedata
                        inactiveTrackColor: Color(0xFFFFFFFF),
                        thumbColor: Color(0XFF2b2b2b),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 10.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 20.0,
                        ),
                        overlayColor: const Color.fromARGB(185, 219, 253, 132),
                        activeTrackColor: Color(0XFF2b2b2b),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        // activeColor: Color(0xFFEB1555),
                        // inactiveColor: Color(0xFFFFFFFF),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                onPressed: null,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kInactiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('WEIGHT', style: labelTextstyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(weight.toString(), style: labelTextstyle2),
                              const SizedBox(height: 10.0),
                              Text('kg ', style: labelTextstyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons
                                    .minus, //FontAwesomeIcon.minus
                              ),
                              SizedBox(width: 12.0),
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons
                                    .plus, //FontAwesomeIcon.plus
                              ),
                            ],
                          ),
                        ],
                      ),
                      onPressed: null,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kInactiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('AGE', style: labelTextstyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(age.toString(), style: labelTextstyle2),
                              const SizedBox(height: 10.0),
                              Text('y', style: labelTextstyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(width: 12.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      onPressed: null,
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(
                  height: height,
                  weight: weight,
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterPretation(),
                      extra: calc.interPretationExtra(),
                    ),
                  ),
                );
              },
              buttonTitle: 'Calculate',
            ),
          ],
        ),
      ),
    );
  }
}
 

//int myAge = 12;
//bool canBuyAlcohol = myAge > 21 ? true : false