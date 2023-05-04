import 'package:intl/intl.dart';

final _numberFormat = NumberFormat("#,##0", "id_ID");

extension DateExt on DateTime? {
  bool isSame(DateTime? other) {
    if (other == null || this == null) {
      return false;
    }

    return this!.year == other.year &&
        this!.month == other.month &&
        this!.day == other.day;
  }
}

extension CapExt on String {
  String get capitalizeSentence {
    var sentences = toLowerCase().split(' ');
    var output = '';
    for (var sen in sentences) {
      if(sen.isEmpty) continue;

      var trimmed = sen.trim();
      var capitalized = trimmed[0].toUpperCase() + trimmed.substring(1);
      output += "$capitalized ";
    }
    return output;
  }

  String get capitalize {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  double get fromCurrencyFormat {
    if (isEmpty) return 0.0;
    return _numberFormat.parse(replaceAll("Rp ", "")).toDouble();
  }
}

extension DistanceExt on num {
  double get toKilometers => this / 1000;

  double get toMiles => this * 0.000621371;

  double get toNautical => this / 1852.0;

  double get toYards => this * 1.0936132983;

  double get toFeets => this * 5280.0;
}

extension CurrencyExt on num? {
  String get toCurrencyFormat => "Rp ${_numberFormat.format(this ?? 0)}";

  bool get isPrime {
    if (this == null) {
      return false;
    }

    for (var i = 2; i <= this! / i; ++i) {
      if (this! % i == 0) {
        return false;
      }
    }
    return true;
  }
}
