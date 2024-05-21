import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  static DateTime? dmyToDate(String dataString) {
    try {
      // Dividir a string em dia, mês e ano
      List<String> split = dataString.split('/');

      if (split.length != 3) {
        throw const FormatException();
      }

      int dia = int.parse(split[0]);
      int mes = int.parse(split[1]);
      int ano = int.parse(split[2]);

      // Verificar se os valores são válidos
      if (dia < 1 || dia > 31 || mes < 1 || mes > 12 || ano < 0) {
        throw const FormatException();
      }

      // Criar e retornar o DateTime
      return DateTime(ano, mes, dia);
    } catch (_) {
      return null;
    }
  }

  static String dateToDmy(DateTime date) {
    DateFormat formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(date);
  }

  static bool validateDate(String? data) {
    try {
      if (data == null) throw ();

      List<String> parts = data.split('/');
      int day = int.parse(parts[0]);
      int month = int.parse(parts[1]);
      int year = int.parse(parts[2]);
      DateTime validDate = DateTime(year, month, day);

      return validDate.year == year &&
          validDate.month == month &&
          validDate.day == day;
    } catch (e) {
      return false;
    }
  }
}
