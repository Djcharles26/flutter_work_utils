import 'package:flutter/material.dart';
import 'package:flutter_work_utils/models/routing_data.dart';
import 'package:flutter_work_utils/utils/nav_route.dart';
import 'package:flutter_work_utils/utils/query_parameters.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Future<dynamic> navigateTo(String route,
      {Map<String, dynamic>? queryParams, int removeUntil = -1}) {
    String routeName = generateNavRoute(route, queryParams: queryParams);
    if (removeUntil > 0) {
      return navigatorKey.currentState!.pushReplacementNamed(routeName);
    } else {
      return navigatorKey.currentState!.pushNamed(routeName);
    }
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}

String? getQueryParam(BuildContext context, String name) {
  RoutingData? routingData =
      ModalRoute.of(context)?.settings.name?.getRoutingData;
  if (routingData != null) {
    return routingData[name];
  }
  return null;
}
