import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: " Clients",
      ),
    );
  }
}
