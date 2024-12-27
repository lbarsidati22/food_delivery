//dart
//import 'dart:io';

//flutter
import 'package:flutter/material.dart';
//other packges
//internel (files)
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/pages/food_details_page.dart';
import 'package:food_delevery/ui_models/food_details_args.dart';
import 'package:food_delevery/widgets/food_grid_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                height: isLandscape ? size.height * 0.7 : size.height * 0.23,
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
                crossAxisCount: isLandscape ? 4 : 2,
                mainAxisSpacing: size.height * 0.02,
                crossAxisSpacing: size.height * 0.02,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(
                      FoodDetailsPage.routeName,
                      arguments: FoodDetailsArgs(foodIndex: index),
                    )
                        .then((onValue) {
                      setState(() {});
                    });
                  },
                  child: FoodGridItem(
                    foodIndex: index,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
