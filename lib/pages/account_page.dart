import 'package:flutter/material.dart';
import 'package:food_delevery/utilities/app_assets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  Widget orderVousherItem(
    BuildContext context, {
    required int number,
    required String name,
  }) =>
      Column(
        children: [
          Text(
            '$number',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.titleMedium!,
          )
        ],
      );
  Widget itemTappedTile(
    BuildContext context, {
    required String title,
    String? subTitle,
    required IconData icon,
  }) {
    final size = MediaQuery.sizeOf(context);
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return ListTile(
      onTap: () {
        debugPrint('$title ckilcked');
      },
      title: Text(title),
      subtitle: subTitle != null ? Text(subTitle) : null,
      leading: Icon(
        icon,
        size: isLandscape ? size.height * 0.09 : size.height * 0.04,
      ),
      trailing: Icon(
        Icons.chevron_right,
        size: isLandscape ? size.height * 0.09 : size.height * 0.04,
      ),
    );
  }

  Widget personProfile(double width, double height) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            AppAssets.profileImg,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textName = Text(
      'Lbar Sidati',
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
    );
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SingleChildScrollView(
      child: Column(
        children: [
          if (!isLandscape) ...[
            personProfile(size.width * 0.5, size.height * 0.25),
            SizedBox(
              height: 14.0,
            ),
            textName,
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                orderVousherItem(number: 50, name: 'Order', context),
                orderVousherItem(number: 10, name: 'Vouchers', context),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
          if (isLandscape) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    personProfile(size.width * 0.25, size.height * 0.5),
                    SizedBox(
                      height: 8.0,
                    ),
                    textName,
                  ],
                ),
                Column(
                  children: [
                    orderVousherItem(number: 50, name: 'Order', context),
                    SizedBox(
                      height: 12.0,
                    ),
                    orderVousherItem(number: 10, name: 'Vouchers', context),
                  ],
                ),
              ],
            ),
          ],
          Divider(),
          itemTappedTile(
            title: 'Past Orders',
            context,
            icon: Icons.shopping_cart,
          ),
          Divider(),
          itemTappedTile(
            title: 'Available Vouchers',
            context,
            icon: Icons.card_giftcard,
          ),
          Divider(),
        ],
      ),
    );
  }
}
