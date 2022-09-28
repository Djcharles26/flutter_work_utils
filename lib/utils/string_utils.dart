import 'package:diacritic/diacritic.dart';

extension StringExt on String {
  String get pertenence {
    if (isEmpty) {
      return this;
    }
    if (this[0] == "s" ) {
      return substring(0, length - 1) + "'s";
    } else {
      return this + "'s";
    }
  }

  String get formattedSearchText {
    if (isEmpty) {
      return this;
    }

    return removeDiacritics(toLowerCase().replaceAll(" ", ""));
  }
}