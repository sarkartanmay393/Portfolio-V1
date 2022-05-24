import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textCtx = Theme.of(context).textTheme;
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => html.window.open(
              "https://twitter.com/sarkartanmay393",
              "_blank",
            ),
            icon: const FaIcon(FontAwesomeIcons.twitter),
            iconSize: 18,
          ),
          IconButton(
            onPressed: () => html.window.open(
              "https://www.linkedin.com/in/tanmaysrkr/",
              "_blank",
            ),
            icon: const FaIcon(FontAwesomeIcons.linkedinIn),
            iconSize: 18,
          ),
          IconButton(
            onPressed: () => html.window.open(
              "https://github.com/sarkartanmay393",
              "_blank",
            ),
            icon: const FaIcon(FontAwesomeIcons.github),
            iconSize: 18,
          ),
          IconButton(
            onPressed: () => html.window.open(
              "https://www.instagram.com/tanmaysrkr/",
              "_blank",
            ),
            icon: const FaIcon(FontAwesomeIcons.instagram),
            iconSize: 18,
          ),
        ],
      ),
    );
  }
}
