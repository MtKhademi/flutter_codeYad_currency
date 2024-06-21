import 'package:intl/intl.dart';

class DateTimeService {
  DateTime get Now => DateTime.now();

  String get TimeToString => DateFormat("kk:mm:ss").format(Now);
}
