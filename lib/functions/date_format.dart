import 'package:intl/intl.dart';

String dateFormat(
  DateTime? x, [
  bool includeTime = false,
  bool includeTimeAgo = false,
]) {
  if (x == null) return '-';
  String formattedDate = '';
  if (!includeTime) {
    formattedDate = DateFormat('dd-MM-yyyy').format(x);
  } else {
    formattedDate = DateFormat('dd-MM-yyyy H:m').format(x);
  }
  if (includeTimeAgo) {
    final Duration difference = DateTime.now().toUtc().difference(x);
    String timeAgo;

    if (difference.isNegative) {
      timeAgo = '\n(hace 0 segundos)';
    } else {
      if (difference.inSeconds < 60) {
        timeAgo = '\n(hace ${difference.inSeconds} segundos)';
      } else if (difference.inMinutes < 60) {
        timeAgo = '\n(hace ${difference.inMinutes} minutos)';
      } else if (difference.inHours < 48) {
        timeAgo = '\n(hace ${difference.inHours} horas)';
      } else if (difference.inDays <= 30) {
        timeAgo = '\n(hace ${difference.inDays} días)';
      } else if (difference.inDays > 30) {
        timeAgo = '\n(hace ${difference.inDays ~/ 30} meses)';
      } else {
        timeAgo = '';
      }
    }

    formattedDate = '$formattedDate  $timeAgo';
  }
  return formattedDate;
}

String dateFormatInverse(DateTime? x) {
  if (x == null) return '';
  return DateFormat('yyyy-MM-dd').format(x);
}
