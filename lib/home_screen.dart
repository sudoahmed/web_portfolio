import 'package:flutter/material.dart';
import 'package:web_portfolio/sections/about/about_section.dart';
import 'package:web_portfolio/sections/contact/contact_section.dart';
import 'package:web_portfolio/sections/feedback/feedback_section.dart';
import 'package:web_portfolio/sections/recent_work/recent_work_section.dart';
import 'package:web_portfolio/sections/service/service_section.dart';
import 'package:web_portfolio/sections/top_section/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: const [
        AboutSection(),
        ServiceSection(),
        RecentWorkSection(),
        FeedbackSection(),
        ContactSection(),
        SizedBox(
          height: 600,
        )
      ]),
    ));
  }
}
