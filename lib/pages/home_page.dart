import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                height: size.height * 0.23,
                fit: BoxFit.cover,
                'assets/images/classic_burger.jpg',
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: food.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return FoodGridItem(
                  foodIndex: index,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
