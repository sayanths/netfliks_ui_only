import 'package:flutter/material.dart';
import 'package:netfliks_bloc/core/colors.dart';

class SearchTitleText extends StatelessWidget {
  final String title;
  const SearchTitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
