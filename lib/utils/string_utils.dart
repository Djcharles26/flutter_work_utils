import 'package:diacritic/diacritic.dart';

extension StringExt on String {
  String get pertenence {
    /// Will return the pertenence string of a word
    if (isEmpty) {
      return this;
    }
    if (this[0] == "s") {
      return substring(0, length - 1) + "'s";
    } else {
      return this + "'s";
    }
  }

  String get formattedSearchText {
    /// Will return a string with no spaces, in lowercase and with no diacritics
    if (isEmpty) {
      return this;
    }

    return removeDiacritics(toLowerCase().replaceAll(" ", ""));
  }
}
