import 'package:authorization/auth/HomePage.dart';
import 'package:authorization/auth/register.dart';
import 'package:authorization/auth/registersecont.dart';
import 'package:authorization/auth/vyhot.dart';
import 'package:authorization/mai_knigi/knigipage.dart';
import 'package:authorization/mai_knigi/knigipage1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageKnigi extends StatefulWidget {
  const HomePageKnigi({super.key});

  @override
  State<HomePageKnigi> createState() => _HomePageKnigiState();
}

class _HomePageKnigiState extends State<HomePageKnigi> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      KnigiPage(),
      KnigiPage_1(),
      Vyhot(),
      RegisterSecont()
    ];
    void onItemTap(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: Container(
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTap,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(220, 220, 1, 106),
            icon: Image.asset(
              "assets/images/Knigi.png",
              width: 23.36,
              height: 23.6,
            ),
            label: ("Мои книги"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(220, 220, 1, 106),
            icon: Image.asset(
              "assets/images/lampa.png",
              width: 17.94,
              height: 24.5,
              color: Colors.white,
            ),
            label: ("Рекомендации"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(220, 220, 1, 106),
            icon: Image.asset(
              "assets/images/poisk.png",
              width: 23.35,
              height: 23.33,
            ),
            label: ("Поиск"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(220, 220, 1, 106),
            icon: Image.asset(
              "assets/images/UserCircle.png",
              width: 21,
              height: 21,
            ),
            label: ("Профиль"),
          ),
        ],
      ),
    );
  }
}
