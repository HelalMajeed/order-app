import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/actions/data.dart';
import 'package:study_app/actions/on_food_click.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 0;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 190,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/first.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2.0 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'وسط',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 1;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 190,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/second.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '3.5 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'وسط',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 2;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 190,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/third.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4.0 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'كبير',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 3;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 170,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/forth.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4.5 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'كبير',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///////////////////////////////////////// here is the end of the burger /////////////////////////////////////////

///////////////////////////////////////// and it's the start of the shawrma /////////////////////////////////////////

class Shawrma extends StatefulWidget {
  const Shawrma({super.key});

  @override
  State<Shawrma> createState() => _ShawrmaState();
}

class _ShawrmaState extends State<Shawrma> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // padding: const EdgeInsets.only(right: 10),
      addAutomaticKeepAlives: true,
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 4;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 160,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/sfirst.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2.0 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'صغير',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 5;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 160,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/ssecond.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '3.5 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'وسط',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 6;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 160,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/sthird.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '7.0 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'عائلي',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///////////////////////////////////////// here is the end of the shawrma /////////////////////////////////////////

///////////////////////////////////////// and it's the start of the pizza /////////////////////////////////////////

class Pizza extends StatefulWidget {
  const Pizza({super.key});

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 7;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 190,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/tfirst.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4.0 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'صغير',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 8;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 190,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/tsecond.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '5.5 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'وسط',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 9;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 190,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/tthird.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '7.0 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'كبير',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  picture = 10;
                  return const OnFoodClick();
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 170,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/tforth.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '10.0 \$',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': السعر',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0.1),
                width: 90,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'عائلي',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                    Text(
                      ': الحجم',
                      style: GoogleFonts.cairo(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
