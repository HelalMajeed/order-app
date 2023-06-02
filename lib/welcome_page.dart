import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/main.dart';
import 'colors.dart';
import 'main_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.only(top: 50),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(180),
                  bottomRight: Radius.circular(180),
                ),
                image: DecorationImage(
                  image: AssetImage('images/photo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'BURGER',
                          style: GoogleFonts.smokum(
                              color: secondColor,
                              fontSize: 100,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'مرحبا',
                    style: GoogleFonts.cairo(
                        color: secondColor,
                        fontSize: 50,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 30,
                top: 30,
                left: 170,
                right: 170,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: secondColor,
              ),
              child: Container(
                margin:
                    const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: mainColor,
                ),
                child: SizedBox(
                  width: 125,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          color: mainColor,
                          // margin: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.arrow_back,
                            color: secondColor,
                          ),
                        ),
                        Text(
                          'ابدأ',
                          style: GoogleFonts.cairo(
                            color: secondColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Icon(
                          Icons.abc,
                          color: mainColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
