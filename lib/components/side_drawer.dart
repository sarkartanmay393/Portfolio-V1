import 'dart:math';

import 'package:flutter/material.dart';

import './skills.dart';
import './info-card.dart';
import './coding-card.dart';
import './knowledge-card.dart';
import 'drawer-footer.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

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
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://scontent.frdp4-1.fna.fbcdn.net/v/t39.30808-1/252422862_339165371304869_9118233059854131950_n.jpg?stp=dst-jpg_p320x320&_nc_cat=109&ccb=1-7&_nc_sid=7206a8&_nc_ohc=yKD99vRb74sAX-kzuV5&_nc_ht=scontent.frdp4-1.fna&oh=00_AT9yVjWlWrnhM_QfdCR9iAmMdqFI1Yxv3vpfFoz3bgIBLQ&oe=628B8395"),
                      radius: 50,
                    ),
                    Text(
                      "Tanmay Sarkar",
                      style: textctx.headline4?.merge(TextStyle(
                          color: Colors.black87,
                          fontSize: size.width < 600 ? 16 : 22)),
                    ),
                    Text(
                      "Flutter Developer and Designer",
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
                          onPressed: () {},
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
