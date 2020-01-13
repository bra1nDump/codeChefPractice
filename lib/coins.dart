import 'dart:math';

int solve(String testCase) {
  var cache = {};
  int rec(int coins) {
    var cachedSolution = cache[coins];
    if (cachedSolution != null) {
      return cachedSolution;
    } else if (coins <= 4) {
      return coins;
    } else {
      var solution = max(coins, 
        rec((coins / 2).floor())
        + rec((coins / 4).floor())
        + rec((coins / 3).floor())
      );
      cache[coins] = solution;
      return solution;
    }
  }

  return rec(int.parse(testCase));
}