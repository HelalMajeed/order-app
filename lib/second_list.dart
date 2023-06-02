import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondList extends StatefulWidget {
  const SecondList({super.key});

  @override
  State<SecondList> createState() => _SecondListState();
}

class _SecondListState extends State<SecondList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 55,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/mc.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/subway.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bgking.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/kfc.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/pizzahut.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/dominos.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Pepsi.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            width: 62,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Fanta.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            width: 60,
            height: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/starbucks.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
