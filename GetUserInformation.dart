Future<String> getUser() async {
  await Future.delayed(Duration(seconds: 2));

  return "Alice";
}

void main() async {
  print("Getting user...");

  String user = await getUser();

  print("User: $user");
}
