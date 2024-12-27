import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/ui_models/food_details_args.dart';
import 'package:food_delevery/widgets/custtom_back_bottom.dart';
import 'package:food_delevery/widgets/favorite_bottom.dart';
import 'package:food_delevery/widgets/food_details.dart/food_details_counter.dart';
import 'package:food_delevery/widgets/food_details.dart/property_item.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({
    super.key,
  });
  static const String routeName = '/food-details';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final FoodDetailsArgs foodAgs =
        ModalRoute.of(context)!.settings.arguments as FoodDetailsArgs;
    final foodIindex = foodAgs.foodIndex;
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FavoriteBottom(
                          height: size.height * 0.05,
                          width: size.width * 0.09,
                          foodIndex: foodIindex,
                        ),
                      ),
                    ],
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CusttomBackBottom(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        height: size.height * 0.04,
                        width: size.width * 0.09,
                      ),
                    ),
                    expandedHeight: size.height * 0.5,
                    flexibleSpace: FlexibleSpaceBar(
                      background: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.network(
                              fit: BoxFit.contain,
                              food[foodIindex].imageUrl,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16, top: 16, bottom: 36),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    food[foodIindex].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'Palacio Burger',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          color: Colors.grey.shade700,
                                        ),
                                  ),
                                ],
                              ),
                              FoodDetailsCounter(),
                            ],
                          ),
                          SizedBox(height: 16),
                          IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PropertyItem(
                                  propertyName: 'Size',
                                  propertyValue: 'Medium',
                                ),
                                VerticalDivider(
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                PropertyItem(
                                  propertyName: 'Caloris',
                                  propertyValue: '100 K-clo',
                                ),
                                VerticalDivider(
                                  indent: 0,
                                  endIndent: 0,
                                ),
                                PropertyItem(
                                  propertyName: 'Cocking',
                                  propertyValue: '10-20 Min',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'Versions of the meal have been served for over a century, but its origins still need to be discovered.[9] The 1758 edition of the book The Art of Cookery Made Plain and Easy by Hannah Glasse included a recipe called "Hamburgh sausage", suggesting that it should be served "roasted with toasted bread under it." A similar snack was also popular in Hamburg under the name of "Rundstück warm" ("bread roll warm") in 1869 or earlier,[10] and was supposedly eaten by emigrants on their way to America. However, this may have contained roasted beefsteak rather than Frikadelle. It has alternatively been suggested that Hamburg steak served between two pieces of bread and eaten by Jewish passengers travelling from Hamburg to New York on Hamburg America Line vessels (which began operations in 1847) became so well known that the shipping company gave its name to the dish.[11] It is not known which of these stories actually marks the invention of the hamburger and explains the nameThere is a reference to aHamburg steak as early as 1884 in The Boston Journal.[OED, under "steak"] On July 5, 1896, the Chicago Daily Tribune made a highly specific claim regarding a "hamburger sandwich" in an article about a "Sandwich Car": "A distinguished favorite, only five cents, is Hamburger steak sandwich, the',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Colors.grey,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 16.0,
                right: 16.0,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Text(
                    '\$ ${food[foodIindex].price}',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(
                    width: 46,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: size.height * 0.058,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                          backgroundColor: WidgetStateProperty.all(
                            Theme.of(context).primaryColor,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Checkout',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
