import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';

class FoodGridItem extends StatefulWidget {
  final int foodIndex;
  const FoodGridItem({super.key, required this.foodIndex});

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
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
            Stack(
              children: [
                Image.network(
                  height: 100,
                  food[widget.foodIndex].imageUrl,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 30,
                    width: 30,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          food[widget.foodIndex] =
                              food[widget.foodIndex].copyWith(
                            isFavorite: !food[widget.foodIndex].isFavorite,
                          );
                        });
                      },
                      child: Icon(
                        food[widget.foodIndex].isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              food[widget.foodIndex].name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '\$ ${food[widget.foodIndex].price}',
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
