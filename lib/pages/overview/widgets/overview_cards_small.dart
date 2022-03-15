import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/info_card_small.dart';
import 'info_card.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      child: Column(
        children: [
          Row(
            children: [
              InfoCardSmall(
                title: "Rides in Progress",
                value: "7",
                onTap: () {},
                isActive: true,
              ),
              SizedBox(
                width: _width / 64,
              ),
              InfoCardSmall(
                title: "Package delivered",
                value: "17",
                onTap: () {},
              ),
              SizedBox(height: _width / 64),
              InfoCardSmall(
                title: "Cancelled delivery",
                value: "3",
                onTap: () {},
              ),
              SizedBox(
                width: _width / 64,
              ),
              InfoCardSmall(
                title: "Scheduled deliveries",
                value: "6",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
