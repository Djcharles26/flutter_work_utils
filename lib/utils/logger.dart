// ignore_for_file: avoid_print

String colorText([String color = "reset"]) {
  /// Get color text ASCII codes
  String prefix = "\x1B";
  switch (color.toLowerCase()) {
    case "red":
      return "$prefix[31m";
    case "yellow":
      return "$prefix[33m";
    case "green":
      return "$prefix[32m";
    case "blue":
      return "$prefix[34m";
    case "reset":
      return "$prefix[0m";
    default:
      return "$prefix[0m";
  }
}

void printWarning(Object? text) {
  /// Print Warning with format
  print("${colorText("yellow")}[WARNING]: $text${colorText()}");
}

void printError(Object? error) {
  /// Print Error with format
  print("${colorText("red")}[ERROR]: $error${colorText()}");
}

void printSuccess(Object? text) {
  /// Print Success with format
  print("${colorText("green")}[SUCCESS]: $text${colorText()}");
}

void printLog(Object? log) {
  /// Print Log with format
  print("${colorText("blue")}[LOG]: $log${colorText()}");
}
