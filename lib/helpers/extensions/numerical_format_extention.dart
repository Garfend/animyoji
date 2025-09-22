abstract class NumberFormatter {
  bool canFormat(int number);
  String format(int number);
}

class BillionFormatter implements NumberFormatter {
  @override
  bool canFormat(int number) => number >= 1000000000;

  @override
  String format(int number) {
    double billions = number / 1000000000;
    return billions % 1 == 0
        ? '${billions.toInt()}B'
        : '${billions.toStringAsFixed(1)}B';
  }
}

class MillionFormatter implements NumberFormatter {
  @override
  bool canFormat(int number) => number >= 1000000;

  @override
  String format(int number) {
    double millions = number / 1000000;
    return millions % 1 == 0
        ? '${millions.toInt()}M'
        : '${millions.toStringAsFixed(1)}M';
  }
}

class ThousandFormatter implements NumberFormatter {
  @override
  bool canFormat(int number) => number >= 1000;

  @override
  String format(int number) {
    double thousands = number / 1000;
    return thousands % 1 == 0
        ? '${thousands.toInt()}K'
        : '${thousands.toStringAsFixed(1)}K';
  }
}

class DefaultFormatter implements NumberFormatter {
  @override
  bool canFormat(int number) => true;

  @override
  String format(int number) => number.toString();
}

class NumberFormatterService {
  static final List<NumberFormatter> _formatters = [
    BillionFormatter(),
    MillionFormatter(),
    ThousandFormatter(),
    DefaultFormatter(),
  ];

  static String format(int number) {
    for (var formatter in _formatters) {
      if (formatter.canFormat(number)) {
        return formatter.format(number);
      }
    }
    return number.toString();
  }
}

extension NumericalFormatExtension on int {
  String toCompactString() => NumberFormatterService.format(this);
}