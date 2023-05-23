import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadableNumber(num number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    print(formatterNumber);

    return formatterNumber;
  }
}
