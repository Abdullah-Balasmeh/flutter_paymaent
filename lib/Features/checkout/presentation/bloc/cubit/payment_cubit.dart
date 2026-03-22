import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_payment/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_payment/Features/checkout/data/repositories_impl/checkout_repo_impl.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepoImpl) : super(PaymentInitial());
  CheckoutRepoImpl checkoutRepoImpl;

  Future<void> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    emit(PaymentLoading());
    var result = await checkoutRepoImpl.makePayment(
      paymentIntentInputModel: paymentIntentInputModel,
    );
    result.fold(
      (failure) => emit(PaymentFailure(errorMessage: failure.errorMessage)),
      (r) => emit(PaymentSuccess()),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    log('onChange: $change');
    super.onChange(change);
  }
}
