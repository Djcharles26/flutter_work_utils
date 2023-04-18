import 'package:intl/intl.dart';

extension DateString on DateTime {
  String get dateTimeString {
    /// Return test formatted dd-MM-yyyy hh:mm
    DateFormat format = DateFormat("dd-MM-yyyy hh:mm");
    return format.format(this);
  }

  String get dateTimeSecondString {
    /// Return date formatted dd-MM-yyyy hh:mm:ss
    DateFormat format = DateFormat("dd-MM-yyyy hh:mm:ss");
    return format.format(this);
  }

  String get dateString {
    /// Return date formatted dd-MM-yyyy
    return DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY).format(this);
  }

  String get hourString {
    /// Return date formatted hh:mm
    return DateFormat(DateFormat.HOUR24_MINUTE).format(this);
  }

  String get monthAbbr {
    /// Return test formatted MMM
    return DateFormat("MMM").format(this);
  }

  String dayNameTimeString (String locale) {
    DateFormat format = DateFormat (
      "EEE, d - hh:mm", locale
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
