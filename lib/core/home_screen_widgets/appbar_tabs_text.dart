// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class appbartabsText extends StatelessWidget {
  appbartabsText({super.key, required this.tabbartext});
  String tabbartext;
  @override
  Widget build(BuildContext context) {
    return Tab(child: Text(tabbartext));
  }
}
