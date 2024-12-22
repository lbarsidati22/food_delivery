import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      drawer: Drawer(
        child: Center(
          child: Text('i am in the drawer'),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        title: Text('Foodak'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                height: 180,
                fit: BoxFit.cover,
                'assets/images/classic_burger.jpg',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: food.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return FoodGridItem(
                    foodItem: food[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
