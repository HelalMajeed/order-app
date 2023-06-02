import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/colors.dart';
import 'package:study_app/main.dart';

// ignore: camel_case_types
class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

// ignore: camel_case_types
class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/profile.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 200,
              height: 50,
              decoration: const BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'اعدادات الحساب',
                  style: GoogleFonts.cairo(
                    color: mainColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 200,
              height: 50,
              decoration: const BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'تغيير اللغة',
                  style: GoogleFonts.cairo(
                    color: mainColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 200,
              height: 50,
              decoration: const BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'قائمة الطلبات',
                  style: GoogleFonts.cairo(
                    color: mainColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
