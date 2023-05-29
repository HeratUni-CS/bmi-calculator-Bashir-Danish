import 'package:flutter/material.dart';
import 'package:lib/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color? color;
  final Widget? child;
  ReusableCard({this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color ?? ActiveCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}