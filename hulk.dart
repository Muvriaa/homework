import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!.trim());

  String result = "";

  for (int i = 1; i <= n; i++) {
    if (i % 2 == 1) {
      result += "I hate";
    } else {
      result += "I love";
    }

    if (i < n) {
      result += " that ";
    } else {
      result += " it";
    }
  }

  print(result);
}








