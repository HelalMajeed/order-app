import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/colors.dart';
import 'package:study_app/main.dart';

class OrderButton extends StatefulWidget {
  const OrderButton({super.key});

  @override
  State<OrderButton> createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      width: 400,
      height: 305,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
            height: 10,
            child: Icon(
              Icons.shopping_cart_outlined,
              color: secondColor,
              size: 50,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.alternate_email_outlined,
                color: secondColor,
              ),
              Container(
                height: 25,
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: secondColor,
                  controller: TextEditingController(
                    text: 'Enter Your Email Here.',
                  ),
                  style: GoogleFonts.cairo(
                    color: secondColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.key_outlined,
                color: secondColor,
              ),
              Container(
                height: 25,
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: secondColor,
                  controller: TextEditingController(
                    text: 'Enter Your Password Here.',
                  ),
                  style: GoogleFonts.cairo(
                    color: secondColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 50,
              width: 100,
              decoration: const BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Text(
                'متابعة',
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
