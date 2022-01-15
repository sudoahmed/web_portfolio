import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:web_portfolio/components/section_title.dart';
import 'package:web_portfolio/constants.dart';
import 'package:web_portfolio/models/feedbacks.dart';
import 'package:web_portfolio/sections/feedback/components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 3),
      width: 1110,
      constraints: BoxConstraints(maxWidth: 1110),
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        children: [
          const SectionTitle(
              color: Colors.blue,
              title: "Feedback Recieved",
              subTitle: "Client's Testimonials that inspired me a lot"),
          SizedBox(
            height: kDefaultPadding * 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(feedbacks.length,
                (index) => FeedBackCard(index: index, press: () {})),
          )
        ],
      ),
    );
  }
}
