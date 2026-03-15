import 'package:flutter/material.dart';
import 'package:flutter_payment/core/styles/styles.dart';

class TransactionInfo extends StatelessWidget {
  const TransactionInfo({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.style18.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
