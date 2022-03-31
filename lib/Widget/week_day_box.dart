import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class WeekDayBox extends StatelessWidget {
  final String day;

  WeekDayBox(this.day);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 50, left: 50),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      color: Colors.white,
      child: DottedBorder(
        padding: EdgeInsets.all(10),
        dashPattern: [8, 4],
        strokeWidth: 1,
        child: Text(
          day,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
