class Item {
  late String name;
  late String color;
  late String price;

  // Item constructor
  Item({
    required this.name,
    required this.color,
    required this.price,
  });
}

var itemList = [
  Item(
    name: 'apple',
    color: 'red',
    price: '1.39',
  ),
  Item(
    name: 'banana',
    color: 'yellow',
    price: '0.75',
  ),
  Item(
    name: 'car',
    color: 'blue',
    price: '27,599.00',
  ),
  Item(
    name: 'house',
    color: 'white',
    price: '125,000.00',
  ),
  Item(
    name: 'toaster',
    color: 'gray',
    price: '25.99',
  ),
];
