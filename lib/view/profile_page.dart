import 'package:agro_hamkor/constants/colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.login,
                color: Colors.red,
              ),
            )
          ],
          backgroundColor: ColorConstant.greenA400,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Alim Sultanov",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: ColorConstant.whiteA700Cc,
                        ),
                      ),
                      Text(
                        "-------------------------",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorConstant.whiteA700Cc,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: ColorConstant.whiteA700Cc,
                          ),
                          Text(
                            "Toshkent, Uzbekistan",
                            style: TextStyle(color: ColorConstant.whiteA700Cc),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Row(
              children: [
                Image.asset(
                  "assets/edit.png",
                  height: 25,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text("Profilni taxrirlash")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            child: Row(
              children: [
                Image.asset(
                  "assets/unlock.png",
                  height: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text("Profilni taxrirlash"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            child: Row(
              children: const [
                Icon(
                  Icons.payment,
                  color: Color.fromARGB(255, 58, 188, 62),
                ),
                SizedBox(
                  width: 22,
                ),
                Text("Profilni taxrirlash"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 2,
          ),
          const Center(child: Text("E'lonlar mavjud emas"))
        ]))
      ],
    );
  }
}
