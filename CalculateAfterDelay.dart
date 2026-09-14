Future<int> addNumbers(int a, int b) async {
  await Future.delayed(Duration(seconds: 1));

  return a + b;
}

void main() async {
  print("Calculating...");

  int result = await addNumbers(10, 20);

  print("Result: $result");
}
