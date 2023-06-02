// ignore_for_file: non_constant_identifier_names

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/actions/data.dart';
import 'package:study_app/colors.dart';
import 'package:study_app/list_food.dart';
import 'package:study_app/main.dart';

class SearchList extends StatefulWidget {
  const SearchList({super.key});

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      // padding: const EdgeInsets.only(top: 10, bottom: 10),
      children: [
        MakeList(title[0], food[0], price[0]),
        MakeList(title[1], food[1], price[1]),
        MakeList(title[2], food[2], price[2]),
        MakeList(title[3], food[3], price[3]),
        MakeList(title[4], food[4], price[4]),
        MakeList(title[5], food[5], price[5]),
        MakeList(title[6], food[6], price[6]),
        MakeList(title[7], food[7], price[7]),
        MakeList(title[8], food[8], price[8]),
        MakeList(title[9], food[9], price[9]),
        MakeList(title[10], food[10], price[10]),
      ],
    );
  }
}

Widget MakeList(String newtitle, String image, String price) {
  return ListTile(
    minVerticalPadding: 10,
    title: Text(
      newtitle,
      style: GoogleFonts.cairo(color: Colors.white),
    ),
    leading: Container(
      width: 50,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    ),
    subtitle: Text(
      price,
      style: GoogleFonts.cairo(color: Colors.white),
    ),
    isThreeLine: true,
    hoverColor: secondColor,
    onTap: () {},
  );
}
