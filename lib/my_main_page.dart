import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/colors.dart';
import 'package:study_app/main.dart';
import 'package:study_app/main_page.dart';

class myMainPage extends StatefulWidget {
  const myMainPage({super.key});

  @override
  State<myMainPage> createState() => _myMainPageState();
}

class _myMainPageState extends State<myMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(children: [
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 10,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: secondColor,
                  size: 30,
                ),
                onPressed: () {
                  setState(() {
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
              margin: const EdgeInsets.only(top: 15, right: 10),
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
        ))
      ]),
    );
  }
}
