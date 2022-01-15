import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.6),
          color: Colors.white.withOpacity(0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              ),
              const Text(
                "Muhammad\nAhmad",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: Colors.white,
                    height: 1.5),
              ),
              Text(
                "Junior Flutter Developer",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
