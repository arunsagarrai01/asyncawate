Future<String> downloadFile() async {
  print("Downloading...");

  await Future.delayed(Duration(seconds: 3));

  return "File downloaded successfully";
}

void main() async {
  String result = await downloadFile();

  print(result);
}
