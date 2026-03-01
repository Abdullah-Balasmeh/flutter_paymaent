import 'package:flutter/material.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/my_cart_view_body.dart';
import 'package:flutter_payment/core/widgets/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: customAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
        title: 'My Cart',
      ),
      body: const MyCartViewBody(),
    );
  }
}
