import 'package:flutter/material.dart';
import 'package:web_portfolio/components/section_title.dart';
import 'package:web_portfolio/constants.dart';

import 'components/contact_box.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kDefaultPadding * 4),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(0.2),
        image: const DecorationImage(
            image: AssetImage("assets/images/bg_img_2.png"), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Container(
            width: 1110,
            child: const SectionTitle(
                color: Colors.green,
                title: "Contact Me",
                subTitle: "For Project Inquiry and Information"),
          ),
          Transform.translate(
            offset: const Offset(0, -20),
            child: const ContactBox(),
          ),
        ],
      ),
    );
  }
}
