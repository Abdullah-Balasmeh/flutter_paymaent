import 'package:flutter/material.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/payment_details_view_body.dart';
import 'package:flutter_payment/core/widgets/custom_app_bar.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: customAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'Payment Details',
        ),
        body: const PaymentDetailsViewBody(),
      ),
    );
  }
}
