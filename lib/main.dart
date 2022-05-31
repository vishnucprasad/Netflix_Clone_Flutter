import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/presentation/main_page/screen_main_page.dart';

void main(List<String> args) {
  runApp(const NetflixClone());
}

class NetflixClone extends StatelessWidget {
  const NetflixClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: ScreenMainPage(),
    );
  }
}
