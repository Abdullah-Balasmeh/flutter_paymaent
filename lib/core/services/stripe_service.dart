import 'package:flutter_payment/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payment/Features/checkout/data/models/payment_intent_model.dart';
import 'package:flutter_payment/core/services/dio_service.dart';
import 'package:flutter_payment/core/utils/app_config.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final DioService dioService = DioService();
  Future<PaymentIntentModel> createPaymentIntent(
    PaymentIntentInputModel paymentIntentInputModel,
  ) async {
    var response = await dioService.post(
      url: 'https://api.stripe.com/v1/payment_intents',
      data: paymentIntentInputModel.toJson(),
      token: AppConfig.secretKey,
      contentType: 'application/x-www-form-urlencoded',
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data as Map<String, dynamic>);
    return paymentIntentModel;
  }

  Future<void> initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Flutter Payment',
      ),
    );
  }
}
