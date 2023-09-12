// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class subtitleRow extends StatelessWidget {
  const subtitleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      ],
    );
  }
}
