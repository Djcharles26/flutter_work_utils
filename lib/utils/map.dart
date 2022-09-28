extension MapExt on Map {
  T? getVal<T> (String key) {
    if (containsKey(key)) {
      return this[key] as T?;
    } else {
      return null;
    }
  }
  
  String get pprint {
    String retval = "";

    for (String key in keys) {
      retval += "$key: ${this[key]}\n\n";
    }
    return retval;
  }
}