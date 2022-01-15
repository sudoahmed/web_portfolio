import 'package:flutter/material.dart';
import 'package:web_portfolio/components/default_button.dart';
import 'package:web_portfolio/sections/contact/components/social_card.dart';

import '../../../constants.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding * 5),
      constraints: const BoxConstraints(maxWidth: 1110),
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Transform.translate(
        offset: const Offset(0, 80),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
          constraints: const BoxConstraints(maxWidth: 1110),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialCard(
                    iconSrc: "assets/images/skype.png",
                    name: "AhmedAnsari",
                    color: const Color(0xFFD9FFFC),
                    press: () {},
                  ),
                  SocialCard(
                    iconSrc: "assets/images/whatsapp.png",
                    name: "+92 3431030381",
                    color: const Color(0xFFE4FFC7),
                    press: () {},
                  ),
                  SocialCard(
                    iconSrc: "assets/images/messanger.png",
                    name: "+92 3431030381",
                    color: const Color(0xFFE8F0F9),
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              ContactForm()
            ],
          ),
        ),
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Form(
        child: Wrap(
          spacing: kDefaultPadding * 1.5,
          runSpacing: kDefaultPadding * 2,
          children: [
            SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    labelText: "Your Name", hintText: "Enter Your Name"),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    labelText: "Your Email Address",
                    hintText: "Enter Your Email Address"),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    labelText: "Project Type", hintText: "Select Project Type"),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    labelText: "Project Budget",
                    hintText: "Select Project Budget"),
              ),
            ),
            SizedBox(
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    labelText: "Description",
                    hintText: "Write some description"),
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Center(
              child: FittedBox(
                child: DefaultButton(
                    imgSrc: "assets/images/contact_icon.png",
                    press: () {},
                    text: "Contact Me!"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
