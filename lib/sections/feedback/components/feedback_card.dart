import 'package:flutter/material.dart';
import 'package:web_portfolio/models/feedbacks.dart';

import '../../../constants.dart';

class FeedBackCard extends StatefulWidget {
  const FeedBackCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);

  final int index;
  final void Function() press;

  @override
  State<FeedBackCard> createState() => _FeedBackCardState();
}

class _FeedBackCardState extends State<FeedBackCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if (!isHover) kDefaultShadow],
                  image: DecorationImage(
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Text(
              "\" ${feedbacks[widget.index].review}\"",
              style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  color: kTextColor,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  height: 1.5),
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            const Text(
              "Ronald Thompson",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
