import 'package:intl/intl.dart';

extension DateString on DateTime {
  String get dateTimeString {
    DateFormat format = DateFormat("dd-MM-yyyy hh:mm");
    return format.format(this);
  }

  String get dateTimeSecondString {
    DateFormat format = DateFormat("dd-MM-yyyy hh:mm:ss");
    return format.format(this);
  }

  String get dateString {
    return DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY).format(this);
  }

  String get hourString {
    return DateFormat(DateFormat.HOUR24_MINUTE).format(this);
  }

  String get monthAbbr {
    return DateFormat("MMM").format(this);
  }
}

DateTime? dateTimefromMillisecondsNoZero (int? epoch, {bool defaultNow = false}) {
  DateTime? retval;
  if (epoch != null && epoch != 0) {
    retval = DateTime.fromMillisecondsSinceEpoch(epoch);
  } else if (defaultNow) {
    retval = DateTime.now ();
  }
  return retval;
}