import 'package:flutter/material.dart';

class CastContainer extends StatelessWidget {
  final String image;
  final String name;
  final String designation;

  const CastContainer({
    Key? key,
    required this.image,
    required this.name,
    required this.designation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 80,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF12153D),
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            designation,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF12153D).withOpacity(0.5),
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
