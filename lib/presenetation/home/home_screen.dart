import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netfliks_bloc/core/colors.dart';

import 'package:netfliks_bloc/presenetation/home/widgets/background_card.dart';
import 'package:netfliks_bloc/presenetation/home/widgets/widgets.dart';
import 'package:netfliks_bloc/presenetation/widgets/main_title.dart';
import 'package:netfliks_bloc/presenetation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, value, Widget? _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;

            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            }
            if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  const BackgroundCard(),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child:
                            MainTitle(title: "Top 10 TV Shows in India Today"),
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
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 90,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              colors: [
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(0.3),
                            Colors.black.withOpacity(0.5),
                          ])),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  "https://pngimg.com/uploads/netflix/netflix_PNG15.png",
                                  height: 40,
                                  width: 50,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                              ),
                              kWidth,
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                color: Colors.blue,
                              ),
                              kWidth,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text("TV Shows", style: mainTextStyle),
                              Text(
                                "Movies",
                                style: mainTextStyle,
                              ),
                              Text(
                                "Categories",
                                style: mainTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : kHeight,
            ],
          ),
        );
      },
    ));
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
          style: const TextStyle(color: white, fontWeight: FontWeight.bold),
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
      icon: const Icon(
        Icons.play_arrow,
        color: Colors.black,
      ),
      label: const Text(
        "Play",
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(primary: white),
    );
  }
}

const mainTextStyle =
    TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold);
