import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/widgets/custom_secondery_bottom.dart';

class FavoriteBottom extends StatefulWidget {
  final int foodIndex;
  final double height;
  final double width;
  const FavoriteBottom({
    super.key,
    required this.height,
    required this.width,
    required this.foodIndex,
  });

  @override
  State<FavoriteBottom> createState() => _FavoriteBottomState();
}

class _FavoriteBottomState extends State<FavoriteBottom> {
  @override
  Widget build(BuildContext context) {
    return CustomSeconderyBottom(
      height: widget.height,
      iconData: food[widget.foodIndex].isFavorite
          ? Icons.favorite
          : Icons.favorite_border,
      onTap: () {
        setState(() {
          food[widget.foodIndex] = food[widget.foodIndex].copyWith(
            isFavorite: !food[widget.foodIndex].isFavorite,
          );
        });
      },
      width: widget.width,
    );
  }
}
