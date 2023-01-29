import 'package:agro_hamkor/view/widgets/button.dart';
import 'package:agro_hamkor/view/widgets/dropdown.dart';
import 'package:agro_hamkor/view/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "O'zingizni shaxsiy kabinentingizni hosil qiling",
                style: TextStyle(fontSize: 30, letterSpacing: 0.2, height: 1.2),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const MyTextField(
              hintText: "Ism sarish",
            ),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(hintText: "Telefon raqam"),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(hintText: "Parol"),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(hintText: "Parolni tasdiqlang"),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(hintText: "Tugilgan vaqti"),
            const SizedBox(
              height: 20,
            ),
            const Dropdown(),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GradientButtonFb1(text: "Kirish", onPressed: () {}),
            )
          ]),
        ),
      ),
    );
  }
}
