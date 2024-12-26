import 'package:flutter/material.dart';

class CustomSeconderyBottom extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onTap;
  final IconData iconData;
  const CustomSeconderyBottom({
    super.key,
    required this.height,
    required this.iconData,
    required this.onTap,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      height: height,
      width: width,
      child: InkWell(
        onTap: onTap,
        child: Icon(
          iconData,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
