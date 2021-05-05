import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreenHeader extends StatelessWidget {
  const DetailsScreenHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.4,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/john_wick_chapter_three_ver2_details.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 24,
          left: 20,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset("assets/icons/arrow-left.svg"),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 115,
            width: size.width * 0.9,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                bottomLeft: Radius.circular(60.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.35),
                  offset: Offset(-7, 10),
                  blurRadius: 20,
                  spreadRadius: 4,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Color(0xFF12153D),
                        ),
                        children: [
                          TextSpan(
                            text: "8.2",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          TextSpan(
                            text: "/10",
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "150,212",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Rate This",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent[700],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "86",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text("Metascore"),
                    SizedBox(height: 6.0),
                    Text(
                      "62 reviews",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
