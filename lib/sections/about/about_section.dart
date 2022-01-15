import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:web_portfolio/components/default_button.dart';
import 'package:web_portfolio/components/my_outline_button.dart';
import 'package:web_portfolio/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_with_text_and_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AboutWithTextAndSign(),
                AboutText(
                  text:
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium",
                ),
                ExperienceCard(
                  yrsOfExp: "09", // In String
                ),
                AboutText(
                  text:
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium",
                ),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyOutlineButton(
                  imgSrc: "assets/images/hand.png",
                  press: () {},
                  text: "Hire Me!",
                ),
                const SizedBox(
                  width: kDefaultPadding * 1.5,
                ),
                DefaultButton(
                  press: () {},
                  imgSrc: "assets/images/download.png",
                  text: "Download CV",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
