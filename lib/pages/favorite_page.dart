import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/widgets/favorite_item.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteFood = food.where((foodItem) => foodItem.isFavorite == true);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: favoriteFood
              .map((foodItem) => FavoriteItem(foodItem: foodItem))
              .toList(),
        ),
      ),
    );
  }
}
// ListView.builder(
//         itemCount: food.length,
//         itemBuilder: (context, index) {
//           return FavoriteItem(foodItem: food[index]);
//         },
//       ),
