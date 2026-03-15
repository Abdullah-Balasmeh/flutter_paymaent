import 'package:flutter/material.dart';

class CustomDashedLineWidget extends StatelessWidget {
  const CustomDashedLineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        30,
        (i) => Expanded(
          child: Container(
            color: const Color(0xffB8B8B8),
            height: 2,
            margin: const EdgeInsets.symmetric(horizontal: 2),
          ),
        ),
      ),
    );
  }
}
