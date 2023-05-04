import 'package:intl/intl.dart';

abstract class Validator<T> {
  String? errorMessage;
  Validator(this.errorMessage);

  bool isValid(T value);

  String? call(T value) {
    final result = isValid(value) ? null : errorMessage;
    return result;
  }

  bool hasMatch(String pattern, String value, {bool caseSensitive = true}) {
    RegExp regex = RegExp(pattern, caseSensitive: caseSensitive);
    return regex.hasMatch(value);
  }
}

class RequiredValidator extends Validator<String?> {
  RequiredValidator({required String errorMessage}) : super(errorMessage);

  @override
  bool isValid(String? value) {
    final result = value != null && value.isNotEmpty;
    return result;
  }
}

class EmailValidator extends Validator<String?> {
  EmailValidator({required String errorMessage}) : super(errorMessage);

  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  @override
  bool isValid(String? value) {
    return hasMatch(pattern, value!, caseSensitive: false);
  }
}

class NumberValidator extends Validator<String?> {
  NumberValidator({required String errorMessage}) : super(errorMessage);

  String pattern = r'^[0-9]*$';

  @override
  bool isValid(String? value) {
    return hasMatch(pattern, value!, caseSensitive: true);
  }
}

class MinLengthValidator extends Validator<String?> {
  MinLengthValidator(this.minLength, {required String errorMessage})
      : super(errorMessage);
  final int minLength;

  @override
  bool isValid(String? value) {
    return value!.length >= minLength;
  }
}

class MaxLengthValidator extends Validator<String?> {
  MaxLengthValidator(this.maxLength, {required String errorMessage})
      : super(errorMessage);
  final int maxLength;

  @override
  bool isValid(String? value) {
    return value!.length <= maxLength;
  }
}

class ValueValidator extends Validator<String?> {
  ValueValidator(this.maxValue, {required String errorMessage})
      : super(errorMessage);
  final int maxValue;

  @override
  bool isValid(String? value) {
    return int.parse(value!) <= maxValue;
  }
}

class MultiValidator extends Validator<String?> {
  final List<Validator> validators;
  static String? _errorMessage;
  MultiValidator(this.validators) : super(_errorMessage);

  @override
  bool isValid(String? value) {
    for (var validator in validators) {
      if (validator.call(value) != null) {
        _errorMessage = validator.errorMessage;
        return false;
      }
    }
    return true;
  }

  @override
  String? call(String? value) {
    return isValid(value) ? null : _errorMessage;
  }
}

class DateValidator extends Validator<String?> {
  DateValidator(this.format, {required String errorMessage})
      : super(errorMessage);

  final DateFormat format;

  @override
  bool isValid(String? value) {
    try {
      final e = value == null ? null : format.parseStrict(value);
      return e != null;
    } catch (e) {
      return false;
    }
  }
}

class MultiDateValidator extends Validator<String?> {
  MultiDateValidator(this.format,
      {required String errorMessage})
      : super(errorMessage);

  final RegExp pattern = RegExp("(\\n|;|,|\\s)");
  final DateFormat format;

  @override
  bool isValid(String? value) {
    try {
      if (value == null) {
        return false;
      }

      final list = value.split(pattern);
      List<DateTime> dates = <DateTime>[];
      for (var e in list) {
        final d = format.parseStrict(e);
        dates.add(d);
      }
      return dates.length == list.length;
    } catch (e) {
      return false;
    }
  }
}
