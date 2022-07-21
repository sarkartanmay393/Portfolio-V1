import 'dart:math';
import 'dart:html' as html;

import 'package:flutter/material.dart';

import './skills.dart';
import './info-card.dart';
import './coding-card.dart';
import './knowledge-card.dart';
import 'drawer-footer.dart';

class SideDrawer extends StatelessWidget {
  SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    final textctx = Theme.of(context).textTheme;
    GlobalKey<DrawerControllerState> _key = GlobalKey();
    final size = MediaQuery.of(context).size;
    //
    return Drawer(
      key: _key,
      width: (size.width <= 600)
          ? 0.75 * size.width
          : ((size.width < 820)
              ? size.width / 2
              : min(size.width / 3 + 100, 400)),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 6 + 70,
              padding: const EdgeInsets.all(18),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/profile-pic.png',
                      ),
                      radius: 50,
                    ),
                    Text(
                      "Tanmay Sarkar",
                      style: textctx.headline4?.merge(TextStyle(
                          color: Colors.black87,
                          fontSize: size.width < 600 ? 16 : 22)),
                    ),
                    Text(
                      "DevOps Enthusiast and Flutter Developer",
                      style: textctx.bodyText2?.merge(TextStyle(
                          color: Colors.black87,
                          fontSize: size.width < 600 ? 10 : 14)),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        InfoCard(textctx: textctx),
                        const Divider(),
                        Skills(textctx: textctx),
                        const Divider(),
                        const CodingCard(),
                        const Divider(),
                        const KnowledgeInfo(),
                        TextButton(
                          onPressed: () => html.window.open(
                            "https://drive.google.com/file/d/14j9YIbUwiLsFshg_k65u3AXGX9S9kTJG/view?usp=sharing",
                            "_blank",
                          ),
                          child: const Text(
                            'DOWNLAOD CV',
                            style: TextStyle(color: Color(0xFAEE7A1B)),
                          ),
                        ),
                        const Divider(),
                        const DrawerFooter(),
                        const Divider(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
