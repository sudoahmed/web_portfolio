import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({Key? key, required this.yrsOfExp})
      : super(
          key: key,
        );

  final String yrsOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.all(kDefaultPadding),
        height: 240,
        width: 250,
        decoration: BoxDecoration(
          color: const Color(0xFFF7E8FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: const Color(0xFFEDD2FC),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 6,
                  color: const Color(0xFFA600FF).withOpacity(0.25),
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Text(
                    yrsOfExp,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = const Color(0xFFDFA3FF).withOpacity(0.5),
                      shadows: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          blurRadius: 10,
                          color: const Color(0xFFA600FF).withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    yrsOfExp,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: kDefaultPadding,
                child: Text(
                  "Years of Experience",
                  style: TextStyle(color: Color(0xFFA600FF)),
                ),
              )
            ],
          ),
        ));
  }
}
