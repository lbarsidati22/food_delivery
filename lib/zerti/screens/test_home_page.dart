import 'package:flutter/material.dart';

class TestHomePage extends StatefulWidget {
  const TestHomePage({super.key});

  @override
  State<TestHomePage> createState() => _TestHomePageState();
}

class _TestHomePageState extends State<TestHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset('assets/images/classic_burger.jpg'),
          ),
        ],
      ),
    );
  }
}
