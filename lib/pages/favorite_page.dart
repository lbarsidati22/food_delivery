import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/pages/food_details_page.dart';
import 'package:food_delevery/ui_models/food_details_args.dart';
import 'package:food_delevery/utilities/app_assets.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final favoriteFood =
        food.where((foodItem) => foodItem.isFavorite == true).toList();
    return favoriteFood.isEmpty
        ? Center(
            child: Column(
              children: [
                Image.asset(
                  AppAssets.emptyState,
                  fit: BoxFit.cover,
                  height: isLandscape ? size.height * 0.5 : size.height * 0.3,
                ),
                Text(
                  'No Favorite item Found !',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: favoriteFood.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    int targetedIndex = food.indexOf(favoriteFood[index]);
                    Navigator.of(context).pushNamed(
                      FoodDetailsPage.routeName,
                      arguments: FoodDetailsArgs(foodIndex: targetedIndex),
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.network(
                            height: isLandscape
                                ? size.height * 0.2
                                : size.height * 0.09,
                            width: size.width * 0.2,
                            favoriteFood[index].imageUrl,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  favoriteFood[index].name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '\$ ${favoriteFood[index].price}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              final targetedItem = favoriteFood[index];
                              int targetedIndex = food.indexOf(targetedItem);
                              setState(
                                () {
                                  food[targetedIndex] = food[targetedIndex]
                                      .copyWith(isFavorite: false);
                                  favoriteFood.remove(targetedItem);
                                },
                              );
                            },
                            icon: Icon(
                              Icons.favorite,
                              color: Theme.of(context).primaryColor,
                              size: isLandscape
                                  ? size.height * 0.1
                                  : size.height * 0.035,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
  }
}
