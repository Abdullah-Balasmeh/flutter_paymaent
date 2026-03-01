import 'package:flutter/material.dart';
import 'package:flutter_payment/core/widgets/custom_app_bar.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
        title: 'Thank You',
      ),
      body: const Center(
        child: Text('Thank you'),
      ),
    );
  }
}
