import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lib/constants.dart';

import '../components/icon_content.dart';
import '../components/resuable_card.dart';


class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(child: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),),
                ),
                Expanded(child: ReusableCard(child: IconContent(icon: FontAwesomeIcons.mars, label: 'male'),),),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard()),
                Expanded(child: ReusableCard()),
              ],
            ),
          ),
          Container(
            color: BottomContainerColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: BottomContainerHeight,
          )
        ],
      ),
    );
  }
}
