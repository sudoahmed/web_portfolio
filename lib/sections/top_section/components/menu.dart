import 'package:flutter/material.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonials",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [kDefaultShadow]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItems(index),
        ),
      ),
    );
  }

  Widget buildMenuItems(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 122,
          ),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: const TextStyle(fontSize: 20, color: kTextColor),
              ),
              //This one is for hovered tab of Menu
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -16 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
              //This one is for selected Tab of meny
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Image.asset("assets/images/Hover.png"),
              )
            ],
          ),
        ),
      );
}
