import 'package:agro_hamkor/view/cart_page.dart';
import 'package:agro_hamkor/view/chat_page.dart';
import 'package:agro_hamkor/view/home_page.dart';
import 'package:agro_hamkor/view/profile_page.dart';
import 'package:agro_hamkor/view/widgets/fruit_Dropdown.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _bottomNavIndex = 0;
  List myf = [
    const HomePage(),
    const CartPage(),
    const Chatpage(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: myf[_bottomNavIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          showModalBottomSheet(
              isDismissible: true,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25.0))),
              context: context,
              builder: (BuildContext context) => Column(
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                CupertinoIcons.cloud_upload,
                                size: 50,
                              ),
                              Text("Mahsulot Rasmini yuklang ")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Mahsulot turi"),
                      const FruitDropdown(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Mahsulot nomi"),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 5),
                                  color: Colors.black38,
                                  blurRadius: 5)
                            ]),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Mahsulot tavsifi"),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 5),
                                  color: Colors.black38,
                                  blurRadius: 5)
                            ]),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Mahsulot narxi"),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 5),
                                  color: Colors.black38,
                                  blurRadius: 5)
                            ]),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OutlinedButton(
                              onPressed: () {}, child: const Text("Saqlash")),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text("E'lon qilish"))
                        ],
                      )
                    ],
                  ));
        },
        //params
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          Icons.home,
          Icons.shopping_bag_outlined,
          Icons.chat,
          Icons.person
        ],
        activeColor: Colors.amber,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.sharpEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
