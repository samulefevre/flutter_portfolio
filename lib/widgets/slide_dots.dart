import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  SlideDots(this.isActive);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.teal : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
