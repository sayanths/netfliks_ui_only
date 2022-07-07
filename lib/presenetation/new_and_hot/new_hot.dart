import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netfliks_bloc/core/colors.dart';

import 'package:netfliks_bloc/presenetation/new_and_hot/widgets/widgets.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: Text(
            "New & Hot",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
                kWidth,
                SizedBox(
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
          ],
          bottom: TabBar(
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(30)),
              indicatorColor: Color.fromARGB(255, 244, 243, 241),
              unselectedLabelColor: white,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: "🍿 Coming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                )
              ]),
        ),
        body: TabBarView(children: [
          _buildComingSoon(context),
          _buildEveryonesWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((BuildContext context, int index) =>
            const ComingSoonWidget()),
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 30,
          );
        },
        itemCount: 10);
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) => EveryOneWatchigWidget()));
  }
}




reminderInfo(
  IconData icon,
  String title,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Icon(
          icon,
          color: white,
        ),
        Text(
          title,
          style: TextStyle(color: white),
        ),
      ],
    ),
  );
}
