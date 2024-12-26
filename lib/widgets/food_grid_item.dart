import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/widgets/favorite_bottom.dart';

class FoodGridItem extends StatelessWidget {
  final int foodIndex;
  const FoodGridItem({super.key, required this.foodIndex});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.network(
                      height: constraints.maxHeight * 0.55,
                      food[foodIndex].imageUrl,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: FavoriteBottom(
                        height: constraints.maxHeight * 0.2,
                        width: constraints.maxWidth * 0.2,
                        foodIndex: foodIndex,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.2,
                  child: FittedBox(
                    child: Text(
                      food[foodIndex].name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.17,
                  child: FittedBox(
                    child: Text(
                      '\$ ${food[foodIndex].price}',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ],
            );
          })),
    );
  }
}
