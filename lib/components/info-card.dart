import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final textctx;

  const InfoCard({Key? key, this.textctx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, // (4 * 30),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'College :',
                  style: textctx.bodyText2,
                ),
                Text(
                  "CGEC'24",
                  softWrap: true,
                  style: textctx.bodyText2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Resident :',
                  style: textctx.bodyText2,
                ),
                Text(
                  'Dhupguri',
                  style: textctx.bodyText2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'City :',
                  style: textctx.bodyText2,
                ),
                Text(
                  'Jalpaiguri',
                  style: textctx.bodyText2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Age :',
                  style: textctx.bodyText2,
                ),
                Text(
                  '20',
                  style: textctx.bodyText2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
