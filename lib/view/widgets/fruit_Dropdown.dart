import 'package:flutter/material.dart';

class FruitDropdown extends StatefulWidget {
  const FruitDropdown({super.key});

  @override
  State<FruitDropdown> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<FruitDropdown> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Meva", child: Text("Meva")),
      const DropdownMenuItem(value: "Sabzavot", child: Text("Sabzavot")),
      const DropdownMenuItem(value: "Poliz ekini", child: Text("poliz ekini")),
    ];
    return menuItems;
  }

  String selectedValue = "Meva";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: const Color(0xffF7F8F9),
            border: Border.all(color: const Color.fromARGB(255, 178, 178, 180)),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            )),
        child: DropdownButtonFormField(
          value: selectedValue,
          icon: const Icon(Icons.keyboard_arrow_down),
          elevation: 16,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
          style: const TextStyle(color: Colors.deepPurple),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: dropdownItems,
        ),
      ),
    );
  }
}
