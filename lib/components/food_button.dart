import 'package:flutter/material.dart';

class FoodButton extends StatelessWidget {
  const FoodButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
  });
  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      height: height,
      width: width,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
