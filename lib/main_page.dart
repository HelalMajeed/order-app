import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:study_app/colors.dart';
import 'package:study_app/favourite.dart';
import 'package:study_app/main.dart';
import 'package:study_app/main_view.dart';
import 'package:study_app/menu.dart';
import 'package:study_app/my_main_page.dart';
import 'package:study_app/prfile_page.dart';
import 'package:study_app/search.dart';
import 'package:study_app/welcome_page.dart';

int index = 0;

List pages = [
  const MyMainPage(),
  const Favourite(),
  const Search(),
  const profilePage(),
  const Menu(),
];

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedItemColor: secondColor.withOpacity(1),
        unselectedItemColor: Colors.grey.withOpacity(0.3),
        backgroundColor: mainColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Like',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.man),
          ),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
      ),
      body: pages[index],
    );
  }
}

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key});

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    left: 15,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: secondColor,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        index = 4;
                        Container(
                          color: Colors.white,
                          width: 100,
                          height: 100,
                        );
                      });
                    },
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(top: 15, right: 15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage('images/logo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const MainVeiw(),
        ],
      ),
    );
  }
}
