class DateTimeConverter {
  static double fromUnixToTime(List<double> e) {
    return DateTime.fromMillisecondsSinceEpoch(
      e[0].toInt(),
    ).day.toDouble();
  }
}
