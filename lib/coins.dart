// https://www.codechef.com/problems/COINS

import 'dart:math';

var cache = {};

int solve(int coins) {
  var cachedSolution = cache[coins];
  if (cachedSolution != null) {
    return cachedSolution;
  } else if (coins <= 4) {
    return coins;
  } else {
    var solution = max(coins, 
      solve((coins / 2).floor())
      + solve((coins / 4).floor())
      + solve((coins / 3).floor())
    );
    cache[coins] = solution;
    return solution;
  }
}