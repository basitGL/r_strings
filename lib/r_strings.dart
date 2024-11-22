library r_strings;

import 'dart:math';

/// A utility class for generating random or unique strings.
class RStrings {
  static const _chars = 'abcdefghijklmnopqrstuvwxyz'
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
      '0123456789';

  /// Generates a random string of the specified [length].
  static String generate(int length) {
    final random = Random();
    return String.fromCharCodes(Iterable.generate(
      length,
      (_) => _chars.codeUnitAt(random.nextInt(_chars.length)),
    ));
  }

  /// Generates a unique string using the current timestamp and a random suffix.
  static String generateUnique() {
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final randomSuffix = generate(5); // Generate a 5-character random suffix
    return '$timestamp-$randomSuffix';
  }
}
