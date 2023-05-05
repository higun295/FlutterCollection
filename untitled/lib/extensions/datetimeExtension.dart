import 'package:intl/intl.dart';

extension DatetimeExtension on DateTime{
  String? customDateTime(){
    try {
      return '${DateFormat.yMMMd().format(DateTime.now())} | ${DateFormat.Hms().format(DateTime.now())}';
    } catch (e) {
      return null;
    }
  }
}