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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black),
      home: MainPge(),
    );
  }
}
