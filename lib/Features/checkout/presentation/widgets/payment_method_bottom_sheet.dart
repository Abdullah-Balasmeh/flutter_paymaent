import 'package:flutter/material.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/make_pay_button_bloc_consumer.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/payment_methods_list_view.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodsListView(),
          SizedBox(height: 32),
          MakePayButtonBlocConsumer(),
        ],
      ),
    );
  }
}
