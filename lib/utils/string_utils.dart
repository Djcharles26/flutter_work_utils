import 'package:diacritic/diacritic.dart';

extension StringExt on String {
  String get pertenence {
    /// Will return the pertenence string of a word
    if (isEmpty) {
      return this;
    }
    if (this[0] == "s") {
      return "${substring(0, length - 1)}'s";
    } else {
      return "$this's";
    }
  }

  String get formattedSearchText {
    /// Will return a string with no spaces, in lowercase and with no diacritics
    if (isEmpty) {
      return this;
    }

    return removeDiacritics(toLowerCase().replaceAll(" ", ""));
  }

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String get capitalizeAllWords {
    String value = this;
    var result = value[0].toUpperCase();
    for (int i = 1; i < value.length; i++) {
      if (value[i - 1] == " ") {
        result = result + value[i].toUpperCase();
      } else {
        result = result + value[i];
      }
    }
    return result;
  }
}
