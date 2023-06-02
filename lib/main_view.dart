import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/colors.dart';
import 'package:study_app/list_food.dart';
import 'package:study_app/second_list.dart';

class MainVeiw extends StatefulWidget {
  const MainVeiw({super.key});

  @override
  State<MainVeiw> createState() => _MainVeiwState();
}

class _MainVeiwState extends State<MainVeiw> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _controller = TabController(length: 3, vsync: this);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 15),
              child: Text(
                'اكتشف',
                style: GoogleFonts.cairo(
                    color: titleColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 10, right: 20),
              controller: _controller,
              labelColor: secondColor,
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelStyle: const TextStyle(fontSize: 20),
              unselectedLabelStyle: const TextStyle(fontSize: 12),
              indicatorWeight: 10,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(
                  style: BorderStyle.none,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    'برجر',
                    style: GoogleFonts.cairo(),
                  ),
                ),
                Tab(
                  child: Text(
                    'شاورما',
                    style: GoogleFonts.cairo(),
                  ),
                ),
                Tab(
                  child: Text(
                    'بيتزا',
                    style: GoogleFonts.cairo(),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 250,
          width: double.infinity,
          child: TabBarView(
            controller: _controller,
            children: const [
              Burger(),
              Shawrma(),
              Pizza(),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'عرض الكل',
                style: GoogleFonts.cairo(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'المزيد',
                style: GoogleFonts.cairo(
                  color: titleColor,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
        const SecondList(),
      ],
    );
  }
}