class CoffeeOrder {
  String customerName;
  String coffeeName;
  double _price;


  CoffeeOrder(this.customerName, this.coffeeName, this._price);


  double get price => _price;

  
  void updatePrice(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    }
  }

  
  void displayOrder() {
    print('Customer: $customerName');
    print('Coffee: $coffeeName');
    print('Price: P${price.toStringAsFixed(2)}');
    print('-------------------');
  }
}

void main() {
  
  CoffeeOrder order1 =
      CoffeeOrder('Erie', 'Iced Coffee', 100.00);

  CoffeeOrder order2 =
      CoffeeOrder('Ryy', 'Cappuccino', 120.00);


  List<CoffeeOrder> orders = [order1, order2];


  for (CoffeeOrder order in orders) {
    order.displayOrder();
  }

 
  order1.updatePrice(120.00);

  print('Updated Order:');
  order1.displayOrder();
}
