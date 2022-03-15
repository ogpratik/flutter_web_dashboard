import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';

class RevenueInfo extends StatelessWidget {
  final String title;
  final String amount;
  const RevenueInfo({Key? key, required this.title, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "$title\n\n",
            style: TextStyle(color: lightgrey, fontSize: 16)),
        TextSpan(
            text: "\$ $amount ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
      ])),
    );
  }
}
