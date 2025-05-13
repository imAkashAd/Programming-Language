void main() {
  var productlist = [
    {'name': 'soap', 'price': 60},
    {'name': 'milk', 'price': 70},
    {'name': 'tea', 'price': 45},
    {'name': 'sugar', 'price': 140}
  ];
  for (var product in productlist) {
    print("product name is ${product['name']} and price is ${product['price']}");
  }
}
