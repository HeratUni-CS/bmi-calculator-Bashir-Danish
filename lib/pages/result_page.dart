import 'package:flutter/material.dart';
import 'package:lib/components/bottom_button.dart';
import 'package:lib/components/resuable_card.dart';
import 'package:lib/constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded(
            
            child: Container(
              padding:const EdgeInsets.only(top:25),
              child:const Text(
                'Your Result',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          
          Expanded(
            flex: 5,
            child: ReusableCard(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '20.3',
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        'Normal BMI Range:',
                        style: kBodyGrayTextStyle,
                      ),
                       Text(
                        '18.5 - 25 kg/m2',
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'You have a normal body .Good job!',
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
           BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
