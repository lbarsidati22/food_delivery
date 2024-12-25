import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final favoriteFood =
        food.where((foodItem) => foodItem.isFavorite == true).toList();
    return favoriteFood.isEmpty
        ? Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/empty_state.png',
                  fit: BoxFit.cover,
                  height: 350,
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
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Image.network(
                          height: 70,
                          width: 70,
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
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }
}
