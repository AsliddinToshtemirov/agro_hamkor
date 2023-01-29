// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:agro_hamkor/view/details.dart';
import 'package:flutter/material.dart';

import 'package:agro_hamkor/model/product_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/logo_cropped.png",
                      width: 250,
                    ),
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color(0xffF7F8F9),
                      border: Border.all(
                          color: const Color.fromARGB(255, 178, 178, 180)),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      )),
                  child: Center(
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            child: Image.asset("assets/Filter_Icon_UIA.png"),
                            onTap: () {},
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Qidirish"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 430,
                child: ListView.builder(
                  itemCount: product.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return FoodItem(
                      product: product[index],
                    );
                  },
                ),
              ),
              const Text(
                "  Mashxurlar",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              color: Color(0xffdd993c),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Image.asset("assets/kartoshka.png"),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "Kartoshka",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("   Toshkent viloyati")
                          ],
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Center(
                            child: Text(
                              "8000 sum",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  Product product;
  FoodItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsPage(
                    product: product,
                  )));
        },
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Image.asset(
                  product.imageUrl,
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(product.type),
                          Text(
                            product.name,
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                            child: Text(
                          product.prince,
                          style: const TextStyle(fontSize: 20),
                        )),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
