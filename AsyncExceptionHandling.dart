Future<String> getData() async {
  await Future.delayed(Duration(seconds: 2));

  throw Exception("Something went wrong!");
}

void main() async {
  try {
    print("Getting data...");

    String data = await getData();

    print(data);
  } catch (e) {
    print("Error: $e");
  }
}
