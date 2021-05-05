import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/castContainer.dart';
import '../widgets/detailsScreenHeader.dart';
import '../widgets/movieCategoryChip.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsScreenHeader(size: size),
              SizedBox(
                height: 36.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Ford v Ferrari",
                          style: TextStyle(
                            fontSize: 32.0,
                            color: Color(0xFF12153D),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "2019",
                              style: TextStyle(
                                color: Color(0xFF12153D).withOpacity(0.4),
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              "PG-13",
                              style: TextStyle(
                                color: Color(0xFF12153D).withOpacity(0.4),
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              "2h 32min",
                              style: TextStyle(
                                color: Color(0xFF12153D).withOpacity(0.4),
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 64.0,
                      width: 64.0,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFFFE6D8E),
                      ),
                      child: SvgPicture.asset("assets/icons/plus.svg"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MovieCategoryChip(
                        title: "Action",
                      ),
                      MovieCategoryChip(
                        title: "Biography",
                      ),
                      MovieCategoryChip(
                        title: "Drama",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Plot summary",
                  style: TextStyle(
                    color: Color(0xFF12153D),
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF12153D).withOpacity(0.4),
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Cast & Crew",
                  style: TextStyle(
                    color: Color(0xFF12153D),
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CastContainer(
                        image: "assets/images/actor1.png",
                        name: "James Mangold",
                        designation: "Director",
                      ),
                      CastContainer(
                        image: "assets/images/actor2.png",
                        name: "Matt Damon",
                        designation: "Carroll",
                      ),
                      CastContainer(
                        image: "assets/images/actor3.png",
                        name: "Christian Bale",
                        designation: "Ken Miles",
                      ),
                      CastContainer(
                        image: "assets/images/actor4.png",
                        name: "James Mangold",
                        designation: "Mollie",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




