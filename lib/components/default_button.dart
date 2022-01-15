import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {Key? key, required this.imgSrc, required this.press, required this.text})
      : super(key: key);

  final String imgSrc, text;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 2.5, vertical: kDefaultPadding),
        color: const Color(0xFFE8F0F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(imgSrc, height: 40),
            const SizedBox(
              width: kDefaultPadding,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
