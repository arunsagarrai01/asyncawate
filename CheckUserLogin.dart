Future<String> login(String username, String password) async {
  await Future.delayed(Duration(seconds: 2));

  if (username == "admin" && password == "1234") {
    return "Login successful";
  }

  return "Invalid credentials";
}

void main() async {
  print("Logging in...");

  String result = await login("admin", "1234");

  print(result);
}
