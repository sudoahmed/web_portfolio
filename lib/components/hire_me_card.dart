import 'package:flutter/material.dart';

import '../constants.dart';
import 'default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [kDefaultShadow]),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: 80,
            width: 80,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Starting New Project? ",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Text(
                  "Get an estimate for the new project",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                )
              ],
            ),
          ),
          DefaultButton(
              imgSrc: "assets/images/hand.png", press: () {}, text: "Hire me!")
        ],
      ),
    );
  }
}
