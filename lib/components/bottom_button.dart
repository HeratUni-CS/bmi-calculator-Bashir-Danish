import 'package:flutter/material.dart';
import 'package:lib/constants.dart';

class BottomButton extends StatelessWidget {
  final String? title; 
  final VoidCallback? onTap;
  BottomButton({required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child:Center(child:  Text(title! ,style: kLargeButtonText,),),
      ),
    );
  }
}
