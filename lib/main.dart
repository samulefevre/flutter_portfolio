import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/mentions_page.dart';
import 'package:flutter_portfolio/pages/wrapper_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio Samuel LEFEVRE',
      theme: ThemeData(
        backgroundColor: Colors.teal,
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        accentColor: Colors.white,
        canvasColor: Color(0xff24374f),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      routes: {
        '/': (context) => WrapperPage(),
        '/mentions-legales': (context) => MentionsPage(),
      },
    );
  }
}
