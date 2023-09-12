import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';
import 'package:hamidye_water_example/core/home_screen_widgets/appbar_tabs_text.dart';
import 'package:hamidye_water_example/utility/colors.dart';
import 'package:hamidye_water_example/utility/edgeInsets.dart';

SliverAppBar homeScrAppBar(BuildContext context) {
  return SliverAppBar(
    backgroundColor: ColorItems().transparant,
    centerTitle: true,
    title: SizedBox(
      width: MediaQuery.sizeOf(context).height * 0.20,
      child: Image.asset(logo),
    ),
    leading: Builder(
      builder: (context) {
        return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: ColorItems().blue));
      },
    ),
    pinned: false,
    floating: true,
    bottom: TabBar(
      indicatorPadding: tabbarIdicatorpadding,
      indicatorColor: ColorItems().blue,
      isScrollable: true,
      labelColor: ColorItems().blue,
      labelStyle: Theme.of(context).textTheme.headlineSmall,
      unselectedLabelColor: ColorItems().pink,
      tabs: [
        appbartabsText(tabbartext: tabbarText1),
        appbartabsText(tabbartext: tabbarText2),
        appbartabsText(tabbartext: tabbarText3),
        appbartabsText(tabbartext: tabbarText4),
      ],
    ),
  );
}
