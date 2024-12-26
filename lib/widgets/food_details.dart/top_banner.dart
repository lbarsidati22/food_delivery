import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/widgets/custtom_back_bottom.dart';
import 'package:food_delevery/widgets/favorite_bottom.dart';

class TopBanner extends StatelessWidget {
  final FoodItem foodItem;
  const TopBanner({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: SafeArea(
            child: SizedBox(
              height: size.height * 0.45,
              width: size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CusttomBackBottom(
                        height: size.height * 0.04,
                        width: size.width * 0.09,
                      ),
                      FavoriteBottom(
                        height: size.height * 0.04,
                        width: size.width * 0.09,
                        foodIndex: 1,
                      )
                    ],
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      fit: BoxFit.contain,
                      foodItem.imageUrl,
                      height: size.height * 0.4,
                      width: size.width,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
