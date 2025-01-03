extension TimestampExtensions on int {
  String toDateTimeString() {
    final date = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute}';
  }
}
