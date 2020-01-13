import 'dart:js';
import 'package:node_interop/node.dart';

void readNotEmptyLines(Function(List<String>) next) {
  readLines((lines) => next(lines.where((String line) => line.isNotEmpty).toList()));
}

void readLines(Function(List<String>) next) {
  readStdin((input) => next(input.split('\n')));
}

void readStdin(Function(String) next) {
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