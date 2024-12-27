//dart
//import 'dart:io';

//flutter
import 'package:flutter/material.dart';
import 'package:food_delevery/models/category_item.dart';
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
  String? categoryChosedId;
  bool enableCategoryFiltterd = false;
  late List<FoodItem> filterdFood;
  @override
  void initState() {
    super.initState();
    filterdFood = food;
  }

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
            SizedBox(
              height: size.height * 0.14,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsetsDirectional.only(end: 16.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (categoryChosedId == categories[index].id ||
                              !enableCategoryFiltterd) {
                            enableCategoryFiltterd = !enableCategoryFiltterd;
                          }
                          if (enableCategoryFiltterd) {
                            categoryChosedId = categories[index].id;
                            filterdFood = food
                                .where((item) =>
                                    item.categoryId == categoryChosedId)
                                .toList();
                          } else {
                            categoryChosedId = null;
                            filterdFood = food;
                          }
                        });
                      },
                      child: Container(
                        width: size.width * 0.2,
                        decoration: BoxDecoration(
                          color: categoryChosedId == categories[index].id
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset(categories[index].imgPath),
                              SizedBox(height: 6),
                              Text(
                                categories[index].title,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: categoryChosedId ==
                                              categories[index].id
                                          ? Colors.white
                                          : null,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: filterdFood.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isLandscape ? 4 : 2,
                mainAxisSpacing: size.height * 0.02,
                crossAxisSpacing: size.height * 0.02,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    final targtedFoodItem = food
                        .firstWhere((item) => item.id == filterdFood[index].id);
                    final targetedIndex = food.indexOf(targtedFoodItem);
                    Navigator.of(context)
                        .pushNamed(
                      FoodDetailsPage.routeName,
                      arguments: FoodDetailsArgs(foodIndex: targetedIndex),
                    )
                        .then((onValue) {
                      filterdFood = food;
                      categoryChosedId = null;
                      setState(() {});
                    });
                  },
                  child: FoodGridItem(
                    filterdFood: filterdFood,
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
