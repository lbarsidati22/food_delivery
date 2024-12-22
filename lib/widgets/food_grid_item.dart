import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';

class FoodGridItem extends StatelessWidget {
  const FoodGridItem({super.key, required this.foodItem});
  final FoodItem foodItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              height: 100,
              foodItem.imageUrl,
            ),
            Text(
              foodItem.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '\$ ${foodItem.price}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
