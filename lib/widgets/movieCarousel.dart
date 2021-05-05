import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieCarousel extends StatelessWidget {
  const MovieCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxSwiper.builder(
      itemCount: 3,
      itemBuilder: (_, int) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/john_wick_chapter_three_ver2.png",
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "Ford v Ferrari",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "8.2",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      aspectRatio: 16 / 24,
      enlargeCenterPage: true,
      reverse: false,
      enableInfiniteScroll: false,
    );
  }
}
