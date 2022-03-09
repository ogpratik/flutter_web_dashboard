import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/horizontal_menu_item.dart';
import 'package:flutter_web_dashboard/widgets/vertical_menu_item.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import 'custom_text.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context))
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    else
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
  }
}
