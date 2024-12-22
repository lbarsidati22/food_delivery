import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';

class FavoriteItem extends StatelessWidget {
  final FoodItem foodItem;
  const FavoriteItem({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              height: 70,
              width: 70,
              foodItem.imageUrl,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodItem.name,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '\$ ${foodItem.price}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.favorite),
          ],
        ),
      ),
    );
  }
}
