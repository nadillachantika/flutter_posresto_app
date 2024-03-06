const List<String> _dayNames = [
  'Senin',
  'Selasa',
  'Rabu',
  'Kamis',
  'Jumat',
  'Sabtu',
  'Minggu',
];

const List<String> _monthNames = [
  'Januari',
  'Februari',
  'Maret',
  'April',
  'Mei',
  'Juni',
  'Juli',
  'Agustus',
  'September',
  'Oktober',
  'November',
  'Desember'
];

extension DateTimeExt on DateTime {
  String toFormattedTime() {
    final int hour12 = hour % 12;
    final String monthName = _monthNames[month - 1];

    return '$day $monthName, ${hour12.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  String toFormattedDate() {
    String dayName = _dayNames[this.weekday - 1]; // Mengindeks array dari 0
    String day = this.day.toString();
    String month = _monthNames[this.month - 1]; // Mengindeks array dari 0
    String year = this.year.toString();

    return '$dayName, $day $month $year';
  }
}
