import 'package:agro_hamkor/view/cart_page.dart';
import 'package:agro_hamkor/view/home_page.dart';
import 'package:agro_hamkor/view/profile_page.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../chat_page.dart';

class UserHandler extends StatefulWidget {
  const UserHandler({super.key});

  @override
  State<UserHandler> createState() => _UserHandlerState();
}

class _UserHandlerState extends State<UserHandler> {
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
