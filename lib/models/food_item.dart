class FoodItem {
  final String name;
  final String imageUrl;
  final double price;

  FoodItem({
    required this.name,
    required this.imageUrl,
    required this.price,
  });
}

List<FoodItem> food = [
  FoodItem(
    name: 'Beef Burger',
    imageUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
  ),
  FoodItem(
    name: 'Chicken Burger',
    imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
  ),
  FoodItem(
    name: 'Cheese Burger',
    imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8,
  ),
  FoodItem(
    name: 'Chicken Pizza',
    imageUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
  ),
  FoodItem(
    name: 'Pasta',
    imageUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
  ),
  FoodItem(
    name: 'Pasta2',
    imageUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
  ),
];
