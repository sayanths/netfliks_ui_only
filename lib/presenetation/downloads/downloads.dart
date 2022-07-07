import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netfliks_bloc/core/colors.dart';

import 'package:netfliks_bloc/presenetation/appbar_widget.dart';

class Downloads extends StatelessWidget {
  Downloads({Key? key}) : super(key: key);

  final _widgetList = [
    const SmartDownloads(),
    kHeight,
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidgets(
            title: 'Downloads',
          )),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: ((context, index) => _widgetList[index]),
        separatorBuilder: (ctx,index)=>const SizedBox(height: 25,),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: white,
        ),
        Text(
          "Smart Downloads",
          style: TextStyle(color: white,fontSize: 16),
        )
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final List imageList = [
    "http://image.tmdb.org/t/p/w500/9Rj8l6gElLpRL7Kj17iZhrT5Zuw.jpg",
    "https://www.themoviedb.org/t/p/w500/p0lTkoo94ozBu0PZkKHlpYIu4oG.jpg",
    "https://www.themoviedb.org/t/p/w500/oA9BhUFjCwhME0Q9xgUSIGV1pf5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          style: TextStyle(
              color: white, fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kHeight,
        Text(
          "We'll download a personnalised selection of\nmovies and shows for you,so there's always\nsomething to watch on your device.",
          style: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 20),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: size.height / 1.5,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: size.width * .4,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 100, bottom: 20),
                angle: 25,
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 100, bottom: 20),
                angle: -25,
              ),
              DownloadsImageWidget(
                  imageList: imageList[2],
                  margin: const EdgeInsets.only(left: 0)),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
              color: blue,
              child: const Text(
                "SetUp",
                style: TextStyle(
                    color: white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {}),
        ),
        kHeight,
        MaterialButton(
          color: Color.fromARGB(255, 247, 240, 240),
          child: const Text(
            "See what you can download",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.4,
        height: size.height * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: NetworkImage(imageList)),
        ),
      ),
    );
  }
}
