import 'package:flutter/material.dart';
import 'package:flutter_payment/Features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const FlutterPaymentApp());
}

class FlutterPaymentApp extends StatelessWidget {
  const FlutterPaymentApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
