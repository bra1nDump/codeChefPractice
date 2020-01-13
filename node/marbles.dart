import 'stdin.dart';
import 'package:code_chef/marbles.dart';

void main() {
  readNotEmptyLines((lines) {
    for (var line in lines.skip(1)) {
      var marblesColors = line.split(' ').map(int.parse);
      var marbles = marblesColors.first;
      var colors = marblesColors.last;
      print(solve(marbles, colors));
    }
  });
}