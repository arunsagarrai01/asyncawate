Future<double> getLaptopPrice() async {
  await Future.delayed(Duration(seconds: 1));

  return 1000;
}

Future<double> getMousePrice() async {
  await Future.delayed(Duration(seconds: 1));

  return 50;
}

Future<double> getKeyboardPrice() async {
  await Future.delayed(Duration(seconds: 1));

  return 100;
}

void main() async {
  print("Getting product prices...");

  final prices = await Future.wait([
    getLaptopPrice(),
    getMousePrice(),
    getKeyboardPrice(),
  ]);

  double laptop = prices[0];
  double mouse = prices[1];
  double keyboard = prices[2];

  double total = laptop + mouse + keyboard;

  print("Laptop: \$${laptop}");
  print("Mouse: \$${mouse}");
  print("Keyboard: \$${keyboard}");

  print("----------------");
  print("Total: \$${total}");
}
