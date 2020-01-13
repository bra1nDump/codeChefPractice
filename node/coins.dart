import 'stdin.dart';
import 'package:code_chef/coins.dart';

void main() {
  readNotEmptyLines((lines) {
    for (var solution in lines.map(solve)) {
      print(solution);
    }
  });
}