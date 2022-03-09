import 'dart:js';
import 'package:flutter_web_dashboard/pages/clinets/clients.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

import '../pages/drivers/drivers.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverviewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientPageRoute:
      return _getPageRoute(ClientPage());

    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
