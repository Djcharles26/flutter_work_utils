class RoutingData {
  final String? route;
  final Map<String, String> _queryParameters;

  RoutingData({
    this.route,
    Map<String, String>? queryParameters,
  }) : _queryParameters = queryParameters??{};

  String get queryParameters => _queryParameters.toString();

  Map<String, String> get params => _queryParameters;

  bool contains (String key) {
    return _queryParameters.containsKey(key);
  }

  operator [](String key) => _queryParameters[key];
}