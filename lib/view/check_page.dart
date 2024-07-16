import 'package:flutter/material.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(50),
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
                    '팝콘 선택해주세요',
                    style: TextStyle(
                      color: Color(0xffAFC1f1),
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
