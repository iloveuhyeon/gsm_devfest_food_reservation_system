import 'package:flutter/material.dart';
import 'package:gsm_devfest_food_reservation_system/components/food_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    FoodButton(
                      width: 300,
                      height: 300,
                      text: '슬러쉬',
                    ),
                    FoodButton(
                      width: 300,
                      height: 300,
                      text: '팝콘',
                    ),
                  ],
                ),
                FoodButton(
                  width: 620,
                  height: 300,
                  text: '슬러쉬 + 팝콘',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
