import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:web_portfolio/components/hire_me_card.dart';
import 'package:web_portfolio/components/section_title.dart';
import 'package:web_portfolio/constants.dart';
import 'package:web_portfolio/models/recent_work.dart';

import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
            image: AssetImage("assets/images/recent_work_bg.png"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Transform.translate(
              offset: Offset(0, -80), child: const HireMeCard()),
          Container(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 1.5),
            constraints: const BoxConstraints(maxWidth: 1110),
            child: const SectionTitle(
                color: Color(0xFFFFB100),
                title: "Recent Works",
                subTitle: "My Strong Arenas"),
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(
                  index: index,
                  press: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
