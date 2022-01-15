import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutWithTextAndSign extends StatelessWidget {
  const AboutWithTextAndSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "About \nmy Story",
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        Image.asset('assets/images/sign.png')
      ],
    );
  }
}
