import 'package:flutter_work_utils/models/routing_data.dart';

extension StringExtension on String {
  RoutingData get getRoutingData {
    /// will generate a RoutingData object based on a navigation route
    var uriData = Uri.parse(this);

    return RoutingData(
      queryParameters: uriData.queryParameters,
      route: uriData.path,
    );
  }
}
