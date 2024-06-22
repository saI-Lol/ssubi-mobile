import 'package:intl/intl.dart';

String formatDate(String date, String format) {
  final DateTime dateTime = DateTime.parse(date);
  DateFormat dateFormat = DateFormat(format);
  return dateFormat.format(dateTime);
}

String formatTime(String time, String format) {
  final DateTime dateTime = DateTime.parse(time);
  DateFormat timeFormat = DateFormat(format);
  return timeFormat.format(dateTime);
}
