import 'package:flutter/material.dart';

class FoodButton extends StatelessWidget {
  const FoodButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.imageAsset,
  });
  final double width;
  final double height;
  final String text;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.white,
        ),
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
