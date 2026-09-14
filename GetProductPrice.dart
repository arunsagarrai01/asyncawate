Future<double> getProductPrice() async {
  await Future.delayed(Duration(seconds: 1));

  return 999.99;
}

void main() async {
  print("Getting product price...");

  double price = await getProductPrice();

  print("Price: \$price");
}
