import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {

  final Widget desktop;
  const Responsive({Key? key, required this.desktop}) : super(key: key);

  static bool isDesktop (BuildContext ctx) {
    return MediaQuery.of(ctx).size.width >= 1024;
  }

  static bool isMobile (BuildContext ctx) {
    return MediaQuery.of(ctx).size.width < 600;
  }

  static bool isTablet (BuildContext ctx) {
    return MediaQuery.of(ctx).size.width >= 600 && MediaQuery.of(ctx).size.width < 1024;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container();
  }
}
