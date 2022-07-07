import 'package:flutter/material.dart';
import 'package:netfliks_bloc/core/colors.dart';
import 'package:netfliks_bloc/core/constants.dart';
import 'package:netfliks_bloc/presenetation/home/widgets/background_card.dart';
import 'package:netfliks_bloc/presenetation/home/widgets/widgets.dart';
import 'package:netfliks_bloc/presenetation/widgets/main_title.dart';
import 'package:netfliks_bloc/presenetation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
           BackgroundCard(),
            const MainTitleCard(
              title: 'Released in the past year',
            ),
            kHeight,
            const MainTitleCard(
              title: 'Trending Now',
            ),
            kHeight,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: MainTitle(title: "Top 10 TV Shows in India Today"),
                ),
                kHeight,
                LimitedBox(
                  maxHeight: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      5,
                      (index) => Top10Shows(
                        index: index,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const MainTitleCard(
              title: 'Tense Drama',
            ),
            kHeight,
            const MainTitleCard(
              title: 'South Indian Cenima',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: white,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        color: Colors.black,
      ),
      label: Text(
        "Play",
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(primary: white),
    );
  }
}
