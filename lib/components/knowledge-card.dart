import 'package:flutter/material.dart';

class KnowledgeInfo extends StatefulWidget {
  const KnowledgeInfo({Key? key}) : super(key: key);

  @override
  State<KnowledgeInfo> createState() => _KnowledgeInfoState();
}

class _KnowledgeInfoState extends State<KnowledgeInfo> {
  @override
  Widget build(BuildContext context) {
    final textCtx = Theme.of(context).textTheme;
    return SizedBox(
      height: 3 * 40 + 40,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Knowledge", style: textCtx.bodyText2),
            const SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("•   Git & Github", style: textCtx.subtitle2),
                Text("•   DS & Algo", style: textCtx.subtitle2),
                Text("•   Networking", style: textCtx.subtitle2),
                Text("•   CS Fundamentals", style: textCtx.subtitle2),

              ],
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
