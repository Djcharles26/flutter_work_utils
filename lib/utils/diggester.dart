import 'dart:convert';

import 'package:crypto/crypto.dart';

extension StringDiggest on String {
  String get diggest {
    /// return a String diggested in sha256 hash
    replaceAll(RegExp(r'\t'), '');
    var valBytes = utf8.encode(this);
    var valDiggest = sha256.convert(valBytes);
    return valDiggest.toString();
  }
}
