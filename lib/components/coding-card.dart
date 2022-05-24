import 'package:flutter/material.dart';

class CodingCard extends StatefulWidget {
  const CodingCard({Key? key}) : super(key: key);

  @override
  State<CodingCard> createState() => _CodingCardState();
}

class _CodingCardState extends State<CodingCard> {
  @override
  Widget build(BuildContext context) {
    final textCtx = Theme.of(context).textTheme;
    return SizedBox(
      height: 3 * 40 + 40,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Coding", style: textCtx.bodyText2),
            const SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dart", style: textCtx.bodyText2),
                    Text("70%", style: textCtx.bodyText2),
                  ],
                ),
                const SizedBox(height: 8),
                TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: 0.7),
                  duration: const Duration(milliseconds: 600),
                  builder: (ctx, val, _) =>
                      LinearProgressIndicator(value: val, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Java", style: textCtx.bodyText2),
                    Text("65%", style: textCtx.bodyText2),
                  ],
                ),
                const SizedBox(height: 8),
                TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: 0.65),
                  duration: const Duration(milliseconds: 600),
                  builder: (ctx, val, _) =>
                      LinearProgressIndicator(value: val, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Python", style: textCtx.bodyText2),
                    Text("55%", style: textCtx.bodyText2),
                  ],
                ),
                const SizedBox(height: 8),
                TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: 0.55),
                  duration: const Duration(milliseconds: 600),
                  builder: (ctx, val, _) =>
                      LinearProgressIndicator(value: val, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
