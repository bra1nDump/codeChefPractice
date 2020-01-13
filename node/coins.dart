import 'stdin.dart';
import 'package:code_chef/coins.dart';

void main() {
  readNotEmptyLines((lines) {
    lines.map(int.parse).map(solve).forEach(print);
  });
}