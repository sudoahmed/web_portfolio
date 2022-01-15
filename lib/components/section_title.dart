import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {Key? key,
      required this.color,
      required this.title,
      required this.subTitle})
      : super(key: key);

  final String title, subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 72),
            margin: EdgeInsets.only(right: kDefaultPadding),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(color: color),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                subTitle,
                style: const TextStyle(
                    fontWeight: FontWeight.w200, color: kTextColor),
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
