

import 'package:flutter/material.dart';

import '../constants/route_constants.dart';

///use this service for provide global context to widgets
class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;
}

/// on generate route
class RouterConstant {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return switch (settings.name) {
      RoutesConstants.splashScreen => MaterialPageRoute(builder: (_) =>  Container()),
      RoutesConstants.loginScreen => MaterialPageRoute(builder: (_) => Container()),
      _ => MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))),
        )
      // TODO: Handle this case.
    };
  }
}
