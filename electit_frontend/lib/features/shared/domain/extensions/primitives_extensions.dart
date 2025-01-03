extension TimestampExtensions on int {
  String toDateTimeString() {
    final date = toDateTime();
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute}';
  }

  DateTime toDateTime() {
    return DateTime.fromMillisecondsSinceEpoch(this * 1000);
  }
}

extension DateTimeExtensions on DateTime {
  bool isBetween(DateTime start, DateTime end) {
    return isAfter(start) && isBefore(end);
  }
}

extension DoubleExtensions on double {
  String toPercentageString() {
    return '${(this * 100).toStringAsFixed(2)}%';
  }
}
