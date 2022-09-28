extension MapExt on Map {
  String get pprint {
    /// Return a string of the map with a pretty printing
    String retval = "";

    for (String key in keys) {
      retval += "$key: ${this[key]}\n\n";
    }
    return retval;
  }
}
