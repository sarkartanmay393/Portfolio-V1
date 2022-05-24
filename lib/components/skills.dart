import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  final textctx;

  const Skills({Key? key, this.textctx}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125, // (4 * 30),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Skills",
              style: widget.textctx.bodyText2,
              textAlign: TextAlign.start,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 55,
                          height: 55,
                          child: TweenAnimationBuilder<double>(
                            tween: Tween<double>(begin: 0.0, end: 0.5),
                            duration: const Duration(milliseconds: 600),
                            builder: (context, value, _) =>
                                CircularProgressIndicator(
                                    value: value, color: Colors.white),
                          ),
                        ),
                        Text(
                          "0.5",
                          style: widget.textctx.bodyText2,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Flutter",
                      style: widget.textctx.bodyText2,
                    )
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 55,
                          height: 55,
                          child: TweenAnimationBuilder<double>(
                            tween: Tween<double>(begin: 0.0, end: 0.35),
                            duration: const Duration(milliseconds: 600),
                            builder: (context, value, _) =>
                                CircularProgressIndicator(
                                    value: value, color: Colors.white),
                          ),
                        ),
                        Text(
                          "0.35",
                          style: widget.textctx.bodyText2,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Firebase",
                      style: widget.textctx.bodyText2,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
