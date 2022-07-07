import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netfliks_bloc/core/colors.dart';

import 'package:netfliks_bloc/presenetation/new_and_hot/new_hot.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "FEB",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text(
                    "11",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/t7yguUnzfxuVqWH0kUqvYbMWZsX.jpg"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Colors.black.withOpacity(0.2),
                              radius: 20,
                              child: const Icon(CupertinoIcons.volume_off),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  kHeight,
                  Row(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Mr Bean",
                            style: GoogleFonts.montserrat(
                                fontSize: 30,
                                color: white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      reminderInfo(Icons.notification_add, "Remind me"),
                      reminderInfo(Icons.info, "Info"),
                    ],
                  ),
                  const Text(
                    "Comming on Friday",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: white),
                  ),
                  kHeight,
                  const Text(
                    "Film",
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                  kHeight,
                  const Text(
                    "Tall Girls 2",
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  kHeight,
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Lorem Ipsum, sometimes referred to as 'lipsum',is the placeholder text used in design whencreating content. It helps designers plan out where the content will sit, without needing to wait for the content to be written and approved.",
                      style: TextStyle(
                          fontSize: 16, color: Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EveryOneWatchigWidget extends StatelessWidget {
  const EveryOneWatchigWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          "Friends",
          style: TextStyle(
              color: white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        kHeight,
        SizedBox(
          width: 300,
          child: Text(
            "Lorem Ipsum, sometimes referred to as 'lipsum',is the placeholder text used in design whencreating content. It helps designers plan out where the content will sit, without needing to wait for the content to be written and approved.",
            style: TextStyle(fontSize: 16, color: Colors.grey.withOpacity(0.5)),
          ),
        ),
        kHeight,
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/oKxrDdG0SfmWRtJYmreK4rjDMUo.jpg"),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.2),
                    radius: 20,
                    child: const Icon(CupertinoIcons.volume_off),
                  ),
                ),
              ),
            ],
          ),
        ),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            reminderInfo(
              Icons.share,
              "share",
            ),
            kWidth,
            reminderInfo(
              Icons.add,
              "My List",
            ),
            kWidth,
            reminderInfo(
              Icons.play_arrow,
              "play",
            ),
            kWidth,
          ],
        ),
      ],
    );
  }
}
