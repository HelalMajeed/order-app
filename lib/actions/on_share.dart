import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/colors.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({super.key});

  @override
  State<ShareButton> createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 200,
      height: 110,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: const Icon(
                Icons.facebook_outlined,
                size: 30,
              ),
            ),
            Container(
              width: 180,
              decoration: const BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Text(
                'مشاركة على فيسبوك',
                style: GoogleFonts.cairo(color: titleColor),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: const Icon(
                Icons.whatsapp,
                size: 30,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 180,
              decoration: const BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Text(
                'مشاركة على واتساب',
                style: GoogleFonts.cairo(color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: const Icon(
                Icons.link,
                size: 30,
              ),
            ),
            Container(
              width: 180,
              decoration: const BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Text(
                'مشاركة الرابط',
                style: GoogleFonts.cairo(color: subTitileColor),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
