extension DateFormatExtension on String {
  String formatDate() {
    final List<String> dateSplitted = split('-');

    final String year = dateSplitted[0];
    final String month = dateSplitted[1];
    final String day = dateSplitted[2];

    const Map<String, String> monthNames = {
      '01': 'January',
      '02': 'February',
      '03': 'March',
      '04': 'April',
      '05': 'May',
      '06': 'June',
      '07': 'July',
      '08': 'August',
      '09': 'September',
      '10': 'October',
      '11': 'November',
      '12': 'December',
    };

    final String monthName = monthNames[month]!;

    return '$year $monthName $day';
  }
}
