// Not required for test files
// ignore_for_file: prefer_const_constructors
import 'package:ecocash/ecocash.dart';
import 'package:test/test.dart';

void main() {
  group('Ecocash', () {
    test('can be instantiated', () {
      expect(Ecocash.initialize(apiKey: 'test-api-key'), isNotNull);
    });
  });
}
