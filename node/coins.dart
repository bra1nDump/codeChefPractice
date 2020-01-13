import 'dart:js';
import 'dart:core';
import 'dart:math';

import 'package:node_interop/node.dart';

void solve(String testCase) {
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

  print(rec(int.parse(testCase)));
}

void solveAll(String input) {
  input
    .split('\n')
    .where((String line) => line.isNotEmpty)
    .forEach(solve);
}

typedef StringCallback = void Function(String input);

void readAll(StringCallback next) {
  final stdin = process.stdin;
  stdin.resume();
  stdin.setEncoding('utf8');

  var input = '';
  stdin.addListener('data', allowInterop(
    (String chunk) {
      input += chunk;
    }
  ));

  stdin.addListener('end', allowInterop(() { next(input); }));
}

void main() {
  readAll(solveAll);
}