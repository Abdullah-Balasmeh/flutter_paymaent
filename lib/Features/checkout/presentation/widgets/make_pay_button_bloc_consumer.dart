import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_payment/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payment/Features/checkout/presentation/bloc/cubit/payment_cubit.dart';
import 'package:flutter_payment/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:flutter_payment/core/widgets/app_button.dart';

class MakePayButtonBlocConsumer extends StatelessWidget {
  const MakePayButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute<ThankYouView>(
              builder: (context) => const ThankYouView(),
            ),
          );
        } else if (state is PaymentFailure) {
          Navigator.pop(context);
          log(state.errorMessage);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage)),
          );
        }
      },
      builder: (context, state) {
        return AppButton(
          isLoading: state is PaymentLoading,
          text: 'Complete Payment',
          onTap: () {
            BlocProvider.of<PaymentCubit>(context).makePayment(
              paymentIntentInputModel: PaymentIntentInputModel(
                amount: '100',
                currency: 'USD',
              ),
            );
          },
        );
      },
    );
  }
}
