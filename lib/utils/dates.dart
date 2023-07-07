import 'package:flutter_work_utils/models/configuration.dart';
import 'package:flutter_work_utils/utils/configuration.dart';
import 'package:intl/intl.dart';

UtilsConfiguration configuration = UtilsManager().configuration;

String getTimeFormat ({bool includeSeconds = false}) {
  String time;
  if (configuration.millitaryFormat) {
    time = "HH";
  } else {
    time = "hh";
  }

  time += ":mm";

  if (includeSeconds) {
    time += ":ss";
  }

  if (!configuration.millitaryFormat) {
    time += " a";
  }

  return time;
}

extension DateString on DateTime {
  String get dateTimeString {
    /// Return test formatted dd-MM-yyyy hh:mm
    
    String time = getTimeFormat ();
    
    DateFormat dateFormat = DateFormat.yMd(configuration.locale);
    return "${dateFormat.format(this)}" 
    " ${DateFormat(time, configuration.locale).format(this)}";
  }

  String get dateTimeSecondString {
    String time = getTimeFormat (includeSeconds: true);
    /// Return date formatted dd-MM-yyyy hh:mm:ss
    DateFormat format = DateFormat.yMd (configuration.locale);
    return "${format.format(this)}"
    " ${DateFormat(time, configuration.locale).format(this)}";
  }

  String get dateString {
    /// Return date formatted dd-MM-yyyy
    return DateFormat.yMd (configuration.locale).format(this);
  }

  String get hourString {
    String time = getTimeFormat();
    /// Return date formatted HH:mm
    return DateFormat(time, configuration.locale).format(this);
  }

  String get monthAbbr {
    /// Return test formatted MMM
    return DateFormat("MMM", configuration.locale).format(this);
  }

  String dayNameTimeString (String locale) {
    String time = getTimeFormat ();

    DateFormat format = DateFormat (
      "EEE, d - $time", locale
    );

    return format.format(this);
  }
}

DateTime? dateTimefromMillisecondsNoZero(int? epoch,
    {bool defaultNow = false}) {
  /// Return a [DateTime?] from a nullable epoch, returning null if defaultNow argument is false and epoch is null or zero
  DateTime? retval;
  if (epoch != null && epoch != 0) {
    retval = DateTime.fromMillisecondsSinceEpoch(epoch);
  } else if (defaultNow) {
    retval = DateTime.now();
  }
  return retval;
}
