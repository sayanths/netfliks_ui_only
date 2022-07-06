import 'package:flutter/material.dart';
import 'package:netfliks_bloc/presenetation/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black),
      home: MainPge(),
    );
  }
}
