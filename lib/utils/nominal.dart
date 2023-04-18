extension Nominal on int {
  String get nominal {
    if(this == 1) {
      return "st";
    }else if (this == 2) {
      return "nd";
    }else if (this == 3) {
      return "rd";
    }else {
      return "th";
    }
  }

  String get nominalNumber {
    return "$this$nominal";
  }
}