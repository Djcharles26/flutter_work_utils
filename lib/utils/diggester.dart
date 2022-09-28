import 'dart:convert';

import 'package:crypto/crypto.dart';

extension StringDiggest on String {
  String get diggest {
    replaceAll(RegExp(r'\t'), '');
    var valBytes = utf8.encode(this);
    var valDiggest = sha256.convert(valBytes);
    return valDiggest.toString();
  }
}
