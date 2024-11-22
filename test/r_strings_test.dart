import 'package:flutter_test/flutter_test.dart';

import 'package:r_strings/r_strings.dart';

void main() {
  test('generate random string of specific length', () {
    final randomString = RStrings.generate(10);
    expect(randomString.length, 10);
    expect(RegExp(r'^[a-zA-Z0-9]+$').hasMatch(randomString), isTrue);
  });

  test('generate unique string', () {
    final uniqueString1 = RStrings.generateUnique();
    final uniqueString2 = RStrings.generateUnique();

    expect(uniqueString1, isNot(uniqueString2));
    expect(uniqueString1.contains('-'), isTrue);
  });
}
