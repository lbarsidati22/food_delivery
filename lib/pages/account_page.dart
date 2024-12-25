import 'package:flutter/material.dart';

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
    return ListTile(
      onTap: () {
        debugPrint('$title ckilcked');
      },
      title: Text(title),
      subtitle: subTitle != null ? Text(subTitle) : null,
      leading: Icon(
        icon,
        size: 33,
      ),
      trailing: Icon(
        Icons.chevron_right,
        size: 25,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/lbar.jpg',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 14.0,
          ),
          Text(
            'Lbar Sidati',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
          ),
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
