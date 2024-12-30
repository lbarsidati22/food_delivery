import 'package:flutter/material.dart';

class TestFavorite extends StatelessWidget {
  const TestFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey,
          );
        });
  }
}
