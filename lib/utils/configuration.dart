import 'package:flutter_work_utils/models/configuration.dart';

class UtilsManager {
  static final UtilsManager _singleton = UtilsManager._internal ();

  factory UtilsManager () {
    return _singleton;
  }

  UtilsManager._internal ();
  UtilsConfiguration configuration = UtilsConfiguration();
}