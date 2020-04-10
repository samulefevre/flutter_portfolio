import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/mentions_page.dart';
import 'package:flutter_portfolio/pages/wrapper_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio Samuel Lefèvre',
      theme: ThemeData(
        fontFamily: 'Lato',
        backgroundColor: Colors.teal,
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        accentColor: Colors.white,
        canvasColor: Color(0xff24374f),
        textTheme: TextTheme(
          bodyText1: GoogleFonts.lato(color: Colors.white),
          bodyText2: GoogleFonts.lato(color: Colors.white),
          button: GoogleFonts.lato(color: Colors.white),
        ),
      ),
      routes: {
        '/': (context) => WrapperPage(),
        '/mentions-legales': (context) => MentionsPage(),
      },
    );
  }
}
