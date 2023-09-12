// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';
import 'package:hamidye_water_example/utility/colors.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: ColorItems().lightBlueText),
        centerTitle: true,
        title: Text(
          contacttext5,
          style: TextStyle(color: ColorItems().lightBlueText),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(contacttext1,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(contacttext2,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: ColorItems().pink400)),
              const hemensiparisverButton()
            ],
          ),
          Column(
            children: [
              Text(
                contacttext6,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.facebook)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.facebook)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.facebook)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class hemensiparisverButton extends StatelessWidget {
  const hemensiparisverButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.phone_in_talk_rounded),
          Column(
            children: [
              Text(
                contacttext3,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(contacttext4,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: ColorItems().pink, fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
