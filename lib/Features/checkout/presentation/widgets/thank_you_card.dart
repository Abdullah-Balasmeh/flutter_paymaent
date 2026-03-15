import 'package:flutter/material.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/app_divider.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/barcode_section.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/card_info_widget.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/total_price.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/transaction_info.dart';
import 'package:flutter_payment/core/styles/styles.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50 + 16),
            const Text(
              'Thank you!',
              style: Styles.style25,
            ),
            const SizedBox(height: 2),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
            ),
            const SizedBox(height: 42),
            const TransactionInfo(title: 'Date', value: '10/08/2025'),
            const SizedBox(height: 20),
            const TransactionInfo(title: 'Time', value: '10:15 AM'),
            const SizedBox(height: 20),
            const TransactionInfo(title: 'To', value: 'Sam Louis'),
            const AppDivider(height: 60),
            const TotalPrice(title: 'Total', value: r'$50.97'),
            const SizedBox(height: 30),
            const CardInfoWidget(),
            const Spacer(),
            const BarcodeSection(),
            SizedBox(height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) - 29),
          ],
        ),
      ),
    );
  }
}
