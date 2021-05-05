import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/movieCarousel.dart';
import '../widgets/movieCategoryChip.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 14.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/menu.svg"),
                      color: Color(0xFF12153D),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/search.svg"),
                      color: Color(0xFF12153D),
                    ),
                  ],
                ),
                SizedBox(
                  height: 36.0,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "In Theater",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Color(0xFF12153D),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 6.0,
                              width: 40.0,
                              color: Color(0xFFFE6D8E),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Box Office",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Color(0xFF12153D).withOpacity(0.3),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Coming Soon",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Color(0xFF12153D).withOpacity(0.3),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MovieCategoryChip(
                        title: "Action",
                      ),
                      MovieCategoryChip(
                        title: "Crime",
                      ),
                      MovieCategoryChip(
                        title: "Comedy",
                      ),
                      MovieCategoryChip(
                        title: "Drama",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                MovieCarousel(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




