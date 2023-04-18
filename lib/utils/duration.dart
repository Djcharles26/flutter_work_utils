// ignore_for_file: unnecessary_this
Duration getDurationFromString(String value) {
  if(value.isEmpty) {
    return Duration.zero;
  }
  List<String> parsed = value.replaceAll(" ", "").split(":");
  int hours = int.tryParse(parsed[0])??0;
  int minutes = int.tryParse(parsed[1])??0;
  int seconds = 0;
  int milliseconds = 0;
  if(parsed[2].contains(".")) {
    List<String> parsed2 = parsed[2].split(".");
    seconds = int.tryParse(parsed2[0])??0;
    milliseconds = int.tryParse(parsed2[1])??0;
  }else {
    seconds = int.tryParse(parsed[2])??0;
  }

  return Duration(
    hours: hours, minutes: minutes, seconds: seconds, milliseconds: milliseconds
  );
}


extension DurationToString on Duration {
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String threeDigits(int n) => n.toString().padLeft(3, "0");
  
  String get value {
    return "$hours:$minutes:$seconds.$milliseconds";
  }

  String get valueWithoutHours {
    return "$minutes:$seconds";
  }

  String get valueWithoutHoursWithSuffixes {
    return "$minutes m: $seconds s. $milliseconds ms";
  }

  String get hours {
    return twoDigits(this.inHours);
  }

  String get minutes {
    return twoDigits(this.inMinutes.remainder(60));
  }

  String get seconds {
    return twoDigits(this.inSeconds.remainder(60));
  }

  String get milliseconds {
    return threeDigits(this.inMilliseconds.remainder(1000));
  }

  String  valueByString (String value) {
    switch(value) {
      case "hours": return hours;
      case "minutes": return minutes;
      case "seconds": return seconds;
      case "milliseconds": return milliseconds;
      default: return "";
    } 
  }
}