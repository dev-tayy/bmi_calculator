import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.bmiInterpretation, this.resultText});
  final String bmiResult;
  final String bmiInterpretation;
  final String resultText;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultOutcomeTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kTResultNumberTextStyle,
                  ),
                  Text(
                    bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: kResultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text('RE-CALCULATE', style: kLargeButtonTextStyle),
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: kBottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
