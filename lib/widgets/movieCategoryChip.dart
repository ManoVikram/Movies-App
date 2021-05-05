import 'package:flutter/material.dart';

class MovieCategoryChip extends StatelessWidget {
  final String title;

  const MovieCategoryChip({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Chip(
        label: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF434670),
          ),
        ),
        padding: EdgeInsets.all(8.0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        side: BorderSide(
          color: Color(0xFF12153D).withOpacity(0.15),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
