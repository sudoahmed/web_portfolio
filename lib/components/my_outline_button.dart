import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton(
      {Key? key, required this.imgSrc, required this.press, required this.text})
      : super(key: key);

  final String imgSrc, text;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlineButton(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 2, vertical: kDefaultPadding),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        borderSide: BorderSide(color: Color(0xFFEDEDED)),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imgSrc,
              height: 40,
            ),
            const SizedBox(
              width: kDefaultPadding,
            ),
            Text("Hire Me!")
          ],
        ),
      ),
    );
  }
}
