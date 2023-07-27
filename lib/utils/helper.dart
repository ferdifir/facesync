import 'package:intl/intl.dart';

class Helper {
  static String getFormattedDateNow() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE, dd MMM y').format(now);
    return formattedDate;
  }
}
