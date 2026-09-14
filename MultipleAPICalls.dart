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
  String name = await getName();
  String email = await getEmail();
  int age = await getAge();

  print("Name: $name");
  print("Email: $email");
  print("Age: $age");
}
