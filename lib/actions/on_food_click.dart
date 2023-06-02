import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/actions/data.dart';
import 'package:study_app/actions/on_order.dart';
import 'package:study_app/actions/on_share.dart';
import 'package:study_app/colors.dart';
import 'package:study_app/main.dart';
import 'package:study_app/main_page.dart';

class OnFoodClick extends StatefulWidget {
  const OnFoodClick({super.key});

  @override
  State<OnFoodClick> createState() => _OnFoodClickState();
}

class _OnFoodClickState extends State<OnFoodClick>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
      backgroundColor: secondColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      food[picture],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              width: 475,
              top: 10,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ),
                        );
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            content: ShareButton(),
                            icon: Icon(
                              Icons.ios_share,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(60),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 350,
              child: Container(
                width: 500,
                height: 500,
                decoration: const BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 360,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title[picture],
                    style: GoogleFonts.smokum(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        price[picture],
                        style: GoogleFonts.cairo(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ': السعر',
                        style: GoogleFonts.cairo(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        size[picture],
                        style: GoogleFonts.cairo(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ': الحجم',
                        style: GoogleFonts.cairo(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return OrderButton();
                          });
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: Text(
                        '!اطلب الان',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          color: const Color.fromARGB(255, 59, 59, 59),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
