import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_payment/Features/checkout/data/repositories_impl/checkout_repo_impl.dart';
import 'package:flutter_payment/Features/checkout/presentation/bloc/cubit/payment_cubit.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/app_divider.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/order_info_item.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/payment_method_bottom_sheet.dart';
import 'package:flutter_payment/Features/checkout/presentation/widgets/total_price.dart';
import 'package:flutter_payment/core/widgets/app_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Expanded(flex: 4, child: Image.asset('assets/images/basket_image.png')),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(title: 'Order Subtotal', value: r'$42.97'),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: 'Discount', value: r'$0'),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: 'Shipping', value: r'$8'),
          const AppDivider(height: 34),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const Spacer(),
          AppButton(
            text: 'Complete Payment',
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute<PaymentDetailsView>(
              //     builder: (context) => const PaymentDetailsView(),
              //   ),
              // );
              showModalBottomSheet<PaymentMethodBottomSheet>(
                context: context,
                backgroundColor: const Color(0xffFFFFFF),
                builder: (context) => BlocProvider(
                  create: (context) => PaymentCubit(CheckoutRepoImpl()),
                  child: const PaymentMethodBottomSheet(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
