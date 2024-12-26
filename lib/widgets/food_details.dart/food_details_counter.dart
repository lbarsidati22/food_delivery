import 'package:flutter/material.dart';

class FoodDetailsCounter extends StatefulWidget {
  const FoodDetailsCounter({super.key});

  @override
  State<FoodDetailsCounter> createState() => _FoodDetailsCounterState();
}

class _FoodDetailsCounterState extends State<FoodDetailsCounter> {
  int counter = 1;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 1) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            InkWell(
              onTap: decrementCounter,
              child: Text(
                '-',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: counter > 1 ? null : Colors.grey,
                    ),
              ),
            ),
            SizedBox(width: 16),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(width: 16),
            InkWell(
              onTap: incrementCounter,
              child: Text(
                '+',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
