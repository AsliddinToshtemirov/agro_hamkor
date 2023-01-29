import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network(
            "https://assets9.lottiefiles.com/packages/lf20_ycdtcb3u.json"),
        const Text(
          "Savatda mahsulot mavjud emas",
          textAlign: TextAlign.center,
        )
      ],
    ));
  }
}
