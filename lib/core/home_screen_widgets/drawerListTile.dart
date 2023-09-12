// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

class drawerWidgetListTile extends StatelessWidget {
  drawerWidgetListTile({
    super.key,
    this.onTap,
    required this.Icons,
    required this.Text,
  });
  Widget Icons;
  Widget Text;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icons,
      title: Text,
      onTap: onTap,
    );
  }
}
