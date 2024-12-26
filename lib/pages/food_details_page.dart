import 'package:flutter/material.dart';
import 'package:food_delevery/models/food_item.dart';
import 'package:food_delevery/widgets/food_details.dart/food_details_counter.dart';
import 'package:food_delevery/widgets/food_details.dart/property_item.dart';
import 'package:food_delevery/widgets/food_details.dart/top_banner.dart';

class FoodDetailsPage extends StatelessWidget {
  final int foodIindex;
  const FoodDetailsPage({super.key, required this.foodIindex});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(foodIindex: foodIindex),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16, top: 16, bottom: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
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
                    'Placio burger this is that Placio burger this is that  Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this burger this is that Placio burger this is that  Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this burger this is that Placio burger this is that  Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that Placio burger this is that ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        '\$ ${food[foodIindex].price}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
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
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )),
                              backgroundColor: WidgetStateProperty.all(
                                Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Checkout',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
