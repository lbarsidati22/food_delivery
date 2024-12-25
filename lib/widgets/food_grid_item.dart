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
    final size = MediaQuery.of(context).size;
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
                      food[widget.foodIndex].imageUrl,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: constraints.maxHeight * 0.2,
                        width: constraints.maxHeight * 0.2,
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
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
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
                      food[widget.foodIndex].name,
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
                      '\$ ${food[widget.foodIndex].price}',
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
