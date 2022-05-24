import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

import '../components/side_drawer.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textctx = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    GlobalKey<ScaffoldState> _key = GlobalKey();

    const MobileMaxWidth = 600;
    const TabletMaxWidth = 1024;

    return Scaffold(
      key: _key,
      appBar: PreferredSize(
        preferredSize: Size(size.width, 50),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GestureDetector(
                child: GlowText(
                  "TS",
                  style: textctx.headline2?.merge(
                    TextStyle(fontSize: size.width < MobileMaxWidth ? 22 : 26),
                  ),
                ),
                onTap: () => _key.currentState?.openDrawer(),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "HOME",
                  style: textctx.button?.merge(TextStyle(
                      fontSize: size.width < MobileMaxWidth ? 10 : 14)),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "PROJECTS",
                  style: textctx.button?.merge(TextStyle(
                      fontSize: size.width < MobileMaxWidth ? 10 : 14)),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "CONTACT",
                  style: textctx.button?.merge(TextStyle(
                      fontSize: size.width < MobileMaxWidth ? 10 : 14)),
                ),
              ),
              // const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "HIRE ME",
                  style: textctx.button?.merge(TextStyle(
                      fontSize: size.width < MobileMaxWidth ? 10 : 14)),
                ),
              ),
              //
            ],
          ),
        ),
      ),
      drawer: const SideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height - 50,
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: (size.height) / 2 - 150),
              child: Column(
                children: [
                  FittedBox(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          speed: const Duration(milliseconds: 100),
                          "Hi, I am Tanmay Sarkar",
                          textStyle: textctx.headline2?.merge(TextStyle(
                              fontSize: size.width < MobileMaxWidth ? 32 : 64)),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Flutter Developer and Content Artist",
                      style: textctx.headline3?.merge(TextStyle(
                          fontSize: size.width < MobileMaxWidth ? 16 : 30)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FittedBox(
                    child: Text(
                      "I design and code beautiful UI with Love.",
                      style: textctx.subtitle1?.merge(TextStyle(
                          fontSize: size.width < MobileMaxWidth ? 10 : 18)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: size.height - 50 - 20,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text("No Projects Added."),
              ),
              // child: Row(
              //   children: [
              //     FractionallySizedBox(
              //       child: Column(
              //         children: const [
              //           ListTile(
              //             title:
              //                 Text("Journey of my first demo shop app in Flutter"),
              //             subtitle: Text("Hello, I am ..."),
              //           ),
              //           ListTile(
              //             title:
              //             Text("Journey of my first demo shop app in Flutter"),
              //             subtitle: Text("Hello, I am ..."),
              //           ),
              //           ListTile(
              //             title:
              //             Text("Journey of my first demo shop app in Flutter"),
              //             subtitle: Text("Hello, I am ..."),
              //           ),
              //         ],
              //       ),
              //     ),
              //     const FractionallySizedBox(
              //       child: Card(child: Text("Demo shop-app"),),
              //     ),
              //   ],
              // ),
              // child: false ? nul : const Center(child: Text("Projects")),
            ),
          ],
        ),
      ),
    );
  }
}
