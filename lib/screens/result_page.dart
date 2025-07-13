import "package:bmi_calculator/components/Bottom_button.dart";
import "package:bmi_calculator/constants.dart";
import "package:bmi_calculator/components/reusable_card.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.interpretation,
    required this.bmiResult,
    required this.resultText,
    required this.extra,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final dynamic extra;
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
              style: labelTextstyle.copyWith(fontSize: 18.0),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 355,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text('Your Result', style: kTitleTextStyle),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style: resultText == 'Normal'
                              ? resultTextStyle1
                              : resultText == 'Overweight'
                              ? resultTextStyle2
                              : resultTextStyle3,
                        ),
                        TweenAnimationBuilder<double>(
                          tween: Tween<double>(
                            begin: 0,
                            end: double.parse(bmiResult),
                          ),
                          duration: Duration(seconds: 2),
                          builder: (context, value, child) => Text(
                            value.toStringAsFixed(1),
                            style: kBmiTextStyle,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            interpretation.toUpperCase(),
                            style: kBodyTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    onPressed: null,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10.0),
              child: extra,
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context); //we can go back to the input screen.
            },
            buttonTitle: 'Re-Calculate',
          ),
        ],
      ),
    );
  }
}
