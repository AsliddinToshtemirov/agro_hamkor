import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network(
            "https://assets9.lottiefiles.com/packages/lf20_roylwd7o.json"),
        const Text(
          "Savatda chatlar mavjud emas",
          textAlign: TextAlign.center,
        )
      ],
    ));
  }
}
