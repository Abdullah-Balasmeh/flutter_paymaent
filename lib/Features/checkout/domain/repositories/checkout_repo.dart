import 'package:dartz/dartz.dart';
import 'package:flutter_payment/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payment/core/errors/failure.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  });
}
