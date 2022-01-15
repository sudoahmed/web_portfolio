import 'package:flutter/material.dart';
import 'package:web_portfolio/models/recent_work.dart';

import '../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({Key? key, required this.index, required this.press})
      : super(key: key);

  final int index;
  final void Function() press;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [if (isHover) kDefaultShadow],
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image),
            const SizedBox(
              height: kDefaultPadding * 5,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recentWorks[widget.index].category.toUpperCase(),
                    ),
                    const SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    Text(
                      recentWorks[widget.index].title,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(height: 1.5),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    const Text(
                      "View Details",
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
