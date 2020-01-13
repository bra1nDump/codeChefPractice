import 'package:test/test.dart';

import 'package:code_chef/coins.dart';

// https://www.codechef.com/problems/COINS

void main() {
  test('example works', () {
    expect(solve('12'), equals(13));
    expect(solve('2'), equals(2));
  });
}