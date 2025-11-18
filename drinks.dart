import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!.trim());

  List<String> parts = stdin.readLineSync()!.trim().split(' ');
  double sum = 0;

  for (int i = 0; i < n; i++) {
    sum += double.parse(parts[i]);
  }

  double result = sum / n;

  print(result);
}
