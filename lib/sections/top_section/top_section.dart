import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants.dart';
import './components/logo_and_blurbox.dart';
import './components/menu.dart';
import './components/person_pic.dart';
import 'components/logo_and_blurbox.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover),
      ),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            const Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),
            const Positioned(
              bottom: 0,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
