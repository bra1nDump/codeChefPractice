// https://www.codechef.com/problems/MARBLES

int add(int a, int b) => a + b;

int solve(int marbles, int colors) {
  marbles = marbles - colors;
  return _solve(marbles, colors);
}

Map<String, int> cache = {};

int _solve(int marbles, int colors) {
  final memoized = cache['$marbles,$colors'];
  if (memoized != null) {
    return memoized;
  } else if (marbles == 0) {
    return 1;
  } else if (colors == 1) {
    return 1;
  } else {
    return [
      for (var m = marbles; m >= 0; m--)
        _solve(m, colors - 1),
    ]
    .reduce(add);
  }
}