import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    Key? key,
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String iconSrc, name;
  final Color color;
  final void Function() press;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
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
      child: FittedBox(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 1.5, horizontal: kDefaultPadding),
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultShadow]),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Text(widget.name),
            ],
          ),
        ),
      ),
    );
  }
}
