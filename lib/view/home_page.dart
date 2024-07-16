import 'package:flutter/material.dart';
import 'package:gsm_devfest_food_reservation_system/components/food_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<String> text = [
    '오렌지',
    '포도',
    '망고',
    '블루레몬',
  ];
  static const List<String> imageAsset = [
    'assets/images/orange.png',
    'assets/images/grape.png',
    'assets/images/mango.png',
    'assets/images/bluelemon.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '스탬프 인증하고 간식먹자!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 70,
                  ),
                ),
                Container(
                  height: 80,
                  width: 460,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Color.fromARGB(255, 1, 38, 75)),
                  child: const Text(
                    '슬러시를 선택해주세요',
                    style: TextStyle(
                      color: Color(0xffAFC1f1),
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) => FoodButton(
                      height: 300,
                      width: 200,
                      text: text[index],
                      imageAsset: imageAsset[index],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
