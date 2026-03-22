import 'package:dartz/dartz.dart';
import 'package:flutter_payment/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payment/Features/checkout/domain/repositories/checkout_repo.dart';
import 'package:flutter_payment/core/errors/failure.dart';
import 'package:flutter_payment/core/services/stripe_service.dart';

class CheckoutRepoImpl implements CheckoutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    try {
      await stripeService.makePayment(paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
