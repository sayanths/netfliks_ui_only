import 'package:flutter/material.dart';
import 'package:netfliks_bloc/core/colors.dart';

import 'package:netfliks_bloc/presenetation/widgets/main_card.dart';
import 'package:netfliks_bloc/presenetation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: MainTitle(title: title),
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              5,
              (index) => HommeCard(),
            ),
          ),
        ),
      ],
    );
  }
}
