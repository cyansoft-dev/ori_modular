import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    if (oldValue.text.length > newValue.text.length &&
        !_lastCharacterIsDigit(newValue.text)) {
      return newValue.copyWith(
          text: "0", selection: const TextSelection.collapsed(offset: 1));
    }

    num value = num.tryParse(newValue.text) ?? 0;
    final formatter = NumberFormat("#,##0", "id_ID");
    String newText = "Rp ${formatter.format(value)}";

    return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length));
  }

  bool _lastCharacterIsDigit(String text) {
    final String lastChar = text.substring(text.length - 1);
    return RegExp('[0-9]').hasMatch(lastChar);
  }
}
