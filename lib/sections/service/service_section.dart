import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants.dart';
import 'package:web_portfolio/models/services.dart';

import '../../components/section_title.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: "Service Offering",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFF0000),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length, (index) => ServiceCard(index: index)),
          )
          //TODO : Service card is done ....now work on its animations
        ],
      ),
    );
  }
}
