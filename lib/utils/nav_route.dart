String generateNavRoute(String route, {queryParams = const {}}) {
  /// a method to generate a uri route based on a string route and query 
  String routeName = Uri(path: route, queryParameters: queryParams).toString();
  return routeName;
}
