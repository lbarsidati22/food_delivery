class FoodItemModel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final bool isFavorite;
  final String categoryId;
  FoodItemModel({
    this.isFavorite = false,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.categoryId,
  });

  FoodItemModel copyWith({
    String? id,
    String? name,
    String? imageUrl,
    double? price,
    bool? isFavorite,
    String? categoryId,
  }) {
    return FoodItemModel(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItemModel> food = [
  FoodItemModel(
    id: 'Burger 1',
    categoryId: '1',
    name: 'Beef Burger',
    imageUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
  ),
  FoodItemModel(
    id: 'Burger 2',
    categoryId: '1',
    name: 'Chicken Burger',
    imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
  ),
  FoodItemModel(
    id: 'Burger 3',
    categoryId: '1',
    name: 'Cheese Burger',
    imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8,
  ),
  FoodItemModel(
    id: 'pizza 1',
    categoryId: '2',
    name: 'Chicken Pizza',
    imageUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
  ),
  FoodItemModel(
    id: 'pasta 1',
    categoryId: '3',
    name: 'Pasta',
    imageUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
  ),
  FoodItemModel(
    id: 'pasta 2',
    categoryId: '3',
    name: 'Pasta2',
    imageUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
  ),
];
