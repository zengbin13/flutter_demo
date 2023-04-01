import 'package:intl/intl.dart';

class DateTimeUtil {
  static List<String> dateTimeToString(List<DateTime> dateRange) {
    assert(dateRange.length == 2);
    return [
      DateFormat('yyyy-MM-dd').format(dateRange[0]),
      DateFormat('yyyy-MM-dd').format(dateRange[1])
    ];
  }

  static List<DateTime> getWeekRangeToToday() {
    DateTime now = DateTime.now();
    // 返回当前日期对应的星期几
    int weekday = now.weekday;
    // 本周起始日期
    DateTime weekStart = now.subtract(Duration(days: weekday - 1));
    // 本周结束日期
    // DateTime weekEnd = now.add(Duration(days: 7 - weekday));
    return [weekStart, now];
  }

  static List<String> getWeekRangeStringToToday() {
    return dateTimeToString(getWeekRangeToToday());
  }

  static List<DateTime> getMonthRangeToToday() {
    DateTime now = DateTime.now();
    DateTime monthStart = DateTime(now.year, now.month, 1);
    DateTime monthEnd = now;
    return [monthStart, monthEnd];
  }

  static List<String> getMonthRangeStringToToday() {
    return dateTimeToString(getMonthRangeToToday());
  }
}
