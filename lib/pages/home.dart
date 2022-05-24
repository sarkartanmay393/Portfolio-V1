import 'dart:html' as html;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/side_drawer.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textctx = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    GlobalKey<ScaffoldState> _key = GlobalKey();
    final _homeKey = GlobalKey<ScrollableState>();
    final _contactKey = GlobalKey<ScrollableState>();
    final _projectKey = GlobalKey<ScrollableState>();

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
                  blurRadius: 1.9,
                ),
                onTap: () => _key.currentState?.openDrawer(),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    _homeKey.currentContext!,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
                child: Text(
                  "HOME",
                  style: textctx.button?.merge(TextStyle(
                      fontSize: size.width < MobileMaxWidth ? 12 : 14)),
                ),
              ),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    _projectKey.currentContext!,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
                child: Text(
                  "PROJECTS",
                  style: textctx.button?.merge(TextStyle(
                      fontSize: size.width < MobileMaxWidth ? 12 : 14)),
                ),
              ),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    _contactKey.currentContext!,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
                child: Text(
                  "CONTACT",
                  style: textctx.button?.merge(TextStyle(
                      fontSize: size.width < MobileMaxWidth ? 12 : 14)),
                ),
              ),
              // const Spacer(),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Center(
                        child: Text(
                          "HERE IS MY CURATED PROFILE",
                          style: textctx.bodyText1?.merge(TextStyle(
                              fontSize: size.width < MobileMaxWidth ? 12 : 14,
                              color: Colors.black)),
                        ),
                      ),
                      actionsAlignment: MainAxisAlignment.center,
                      alignment: AlignmentDirectional.center,
                      actions: [
                        TextButton(
                          onPressed: () {
                            _key.currentState!.openDrawer();
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "OPEN",
                            style: TextStyle(color: Colors.deepOrange),
                          ),
                        ),
                      ],
                      backgroundColor: Colors.white,
                    ),
                  );
                },
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
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              key: _homeKey,
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
                              fontSize: size.width < MobileMaxWidth ? 36 : 64)),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "Flutter Developer and Content Artist",
                      style: textctx.headline3?.merge(TextStyle(
                          fontSize: size.width < MobileMaxWidth ? 18 : 30)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FittedBox(
                    child: Text(
                      "I design and code beautiful UI with Love.",
                      style: textctx.subtitle1?.merge(
                        TextStyle(
                          fontSize: size.width < MobileMaxWidth ? 14 : 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              key: _projectKey,
              width: double.infinity,
              height: 60,
              //height: size.height - 50 - 20,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text("No Projects Added."),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.white, width: 0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                key: _contactKey,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                      onPressed: () => html.window.open(
                        "mailto:sarkartanmay393@gmail.com",
                        "_blank",
                      ),
                      icon: Icon(Icons.alternate_email_outlined),
                      label: Text("sarkartanmay393@gmail.com"),
                      style: ButtonStyle(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor:
                            MaterialStateProperty.all(Color(0xFFFF6A00)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Made with 💚 in India"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
