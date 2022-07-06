import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netfliks_bloc/core/colors.dart';
import 'package:netfliks_bloc/presenetation/bottom_nav/bottom_nav.dart';
import 'package:netfliks_bloc/presenetation/downloads/downloads.dart';
import 'package:netfliks_bloc/presenetation/fast_laugh/fast_laugh.dart';
import 'package:netfliks_bloc/presenetation/home/home_screen.dart';
import 'package:netfliks_bloc/presenetation/new_and_hot/new_hot.dart';
import 'package:netfliks_bloc/presenetation/search/search.dart';

class MainPge extends StatelessWidget {
   MainPge({Key? key}) : super(key: key);

  final _pages = [
    ScreenHome(),
    NewAndHot(),
    FastLaugh(),
    Search(),
    Downloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (BuildContext context,int index,Widget?_) {
              return _pages[index];
            }),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
