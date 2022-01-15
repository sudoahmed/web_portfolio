import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutText extends StatelessWidget {
  const AboutText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w200, color: kTextColor, height: 2),
          ),
        ),
      ),
    );
  }
}
