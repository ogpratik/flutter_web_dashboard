import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap; //we can use VoidCallback instead of onPressed.

  const HorizontalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
          color: menuController.isHovering(itemName)
              ? lightgrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                child: Container(
                  width: 6,
                  height: 40,
                  color: dark,
                ),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              SizedBox(
                width: _width / 80,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: menuController.isHovering(itemName) ? dark : lightgrey,
                ))
              else
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: dark,
                  size: 18,
                  weight: FontWeight.bold,
                ))
            ],
          ))),
    );
  }
}
