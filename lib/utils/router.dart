import 'package:flutter/material.dart';
import 'package:flutter_work_utils/models/routing_data.dart';
import 'package:flutter_work_utils/utils/nav_route.dart';
import 'package:flutter_work_utils/utils/query_parameters.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  /// Key binded to material app, allow this class to control the app navigation in any moment of context

  Future<dynamic> navigateTo(String route,
      {Map<String, dynamic>? queryParams, int removeUntil = -1}) {
    /// Method used to navigate with named routes and query params
    String routeName = generateNavRoute(route, queryParams: queryParams);
    if (removeUntil > 0) {
      return navigatorKey.currentState!.pushReplacementNamed(routeName);
    } else {
      return navigatorKey.currentState!.pushNamed(routeName);
    }
  }

  void goBack() {
    /// Method used to return to the last tree position
    return navigatorKey.currentState!.pop();
  }
}

String? getQueryParam(BuildContext context, String name) {
  /// A method to get query params by name
  RoutingData? routingData =
      ModalRoute.of(context)?.settings.name?.getRoutingData;
  if (routingData != null) {
    return routingData[name];
  }
  return null;
}
