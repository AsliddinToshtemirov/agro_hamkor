import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final hintText;
  const MyTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: const Color(0xffF7F8F9),
            border: Border.all(color: const Color.fromARGB(255, 178, 178, 180)),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            )),
        child: Center(
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.only(
                    left: 15, bottom: 11, top: 11, right: 15),
                hintText: hintText),
          ),
        ),
      ),
    );
  }
}
