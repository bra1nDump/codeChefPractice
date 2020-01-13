import 'package:test/test.dart';
import 'package:code_chef/marbles.dart';

void main() {
  test('example works', () {
    expect(solve(10, 10), equals(1));
    expect(solve(30, 7), equals(475020));
  });
}