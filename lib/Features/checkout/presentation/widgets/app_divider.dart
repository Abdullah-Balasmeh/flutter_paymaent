import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    required this.height,
  });
  final double height;
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2,
      height: height,
      color: const Color(0xffC7C7C7),
    );
  }
}
