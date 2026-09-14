Future<String> getName() async {
  await Future.delayed(Duration(seconds: 2));
  return "John";
}

Future<String> getEmail() async {
  await Future.delayed(Duration(seconds: 2));
  return "john@gmail.com";
}

Future<int> getAge() async {
  await Future.delayed(Duration(seconds: 2));
  return 25;
}

void main() async {
  print("Getting user information...");

  final results = await Future.wait([getName(), getEmail(), getAge()]);

  print("Name: ${results[0]}");
  print("Email: ${results[1]}");
  print("Age: ${results[2]}");
}
