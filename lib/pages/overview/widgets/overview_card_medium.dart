import 'package:flutter/material.dart';

import 'info_card.dart';

class OverviewCardMediumScreenSize extends StatelessWidget {
  const OverviewCardMediumScreenSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Rides in Progress",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Package Delivered",
              value: "17",
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            InfoCard(
              title: "Cancelled Delivery",
              value: "3",
              onTap: () {},
              topColor: Colors.redAccent,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Scheduled Delivered",
              value: "4",
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
