import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  String date;
  String number;

  AppBarTitle({
    super.key,
    required this.number,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Чек № $number",
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(0xff252849),
          ),
        ),
        Text(
          date,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: Color(0xff60607B),
          ),
        ),
      ],
    );
  }
}
