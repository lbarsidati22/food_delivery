import 'package:flutter/material.dart';
import 'package:food_delevery/widgets/custom_secondery_bottom.dart';

class CusttomBackBottom extends StatelessWidget {
  final double height;
  final double width;
  // final IconData iconData;
  const CusttomBackBottom({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSeconderyBottom(
        height: height,
        iconData: Icons.arrow_back,
        onTap: () {
          Navigator.of(context).pop();
        },
        width: width);
  }
}
