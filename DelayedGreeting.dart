Future<String> greeting() async {
  await Future.delayed(Duration(seconds: 2));

  return "Good Morning!";
}

void main() async {
  print("Starting...");

  String message = await greeting();

  print(message);
}
