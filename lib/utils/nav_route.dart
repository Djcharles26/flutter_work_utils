String generateNavRoute (String route, {queryParams = const {}}) {
  String routeName = Uri(path: route, queryParameters: queryParams).toString();
  return routeName;
}