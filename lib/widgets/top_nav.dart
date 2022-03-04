import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Image.asset(
                      'assets/icons/logo.png',
                      width: 28,
                    ))
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context)
                    .openDrawer(); //using this syntex instead of :- key.currentState.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(
        children: [
          Visibility(child: CustomText(text: "Dash", color: lightgrey,size: 20, weight: FontWeight.bold,)),
        ],
      ),
    );
