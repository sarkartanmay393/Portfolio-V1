import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './pages/home.dart';

void main() => runApp(const PortfolioWebsite());

class PortfolioWebsite extends StatelessWidget {
  const PortfolioWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final TextTheme textTheme = TextTheme(
      headline1: GoogleFonts.caveat(
          fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: -1.0, color: const Color(0xFFFF6A00)),
      headline2: GoogleFonts.caveat(
          fontSize: 64, fontWeight: FontWeight.bold, letterSpacing: -0.5, color: const Color(0xFFFF6A00)),
      headline3: GoogleFonts.lato(fontSize: 30, letterSpacing: 0.30, fontWeight: FontWeight.w400, color: Colors.white),
      //
      headline4: GoogleFonts.lato(
          fontSize: 22, fontWeight: FontWeight.w400, letterSpacing: 0.25, color: Colors.white),
      //
      // headline5: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400),
      // headline6: GoogleFonts.roboto(
      //     fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      //
      subtitle1: GoogleFonts.lato(
          fontSize: 18, fontWeight: FontWeight.w200, letterSpacing: 0.15, color: Colors.white),
      //
      subtitle2: GoogleFonts.lato(
          fontSize: 12, fontWeight: FontWeight.w300, letterSpacing: 0.1, color: Colors.white),
      bodyText1: GoogleFonts.lato(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5, color: Colors.white),
      //
      bodyText2: GoogleFonts.lato(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25, color: Colors.white),
      //
      button: GoogleFonts.lato(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25, color: Colors.white),

      caption: GoogleFonts.lato(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.lato(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    );

    return MaterialApp(
      title: 'Tanmay Sarkar',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFFFF6A00),
        scaffoldBackgroundColor: Colors.black87,
        backgroundColor: Colors.black87,
        canvasColor: Colors.black87,
        textTheme: textTheme,
      ),
      initialRoute: '/home',
      routes: {
        HomePage.routeName: (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
