import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/actions/data.dart';
import 'package:study_app/colors.dart';
import 'package:study_app/search_list.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
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
    return Container(
      child: Stack(
        children: [
          Positioned(
            height: 400,
            left: 25,
            top: 160,
            child: Container(
              // color: secondColor,
              height: 50,
              width: 450,
              child: const SearchList(),
            ),
          ),
          Positioned(
            top: 25,
            left: 25,
            // child: Container(
            // color: mainColor,
            // width: 450,
            // height: 120,
            child: Column(//crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              Text(
                'ابحث عن طعام',
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 450,
                height: 100,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: secondColor,
                    iconColor: mainColor,
                    suffixIcon: const Icon(Icons.search),
                  ),
                ),
              )
            ]),
          ),
          // )
        ],
      ),
    );
  }
}

// here is a comment.