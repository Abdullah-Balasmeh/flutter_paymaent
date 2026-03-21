import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_payment/Features/checkout/presentation/views/my_cart_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  runApp(const FlutterPaymentApp());
}

class FlutterPaymentApp extends StatelessWidget {
  const FlutterPaymentApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFFFFFF),
      ),
      home: const MyCartView(),
    );
  }
}
