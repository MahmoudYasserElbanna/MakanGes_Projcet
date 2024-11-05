import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/repos/checkout_repo_impl.dart';
import 'package:makanges_app/features/checkout/presentation/view/manager/cubit/stripe_payment_cubit.dart';
import 'package:makanges_app/features/checkout/presentation/view/widgets/payment_methodes_bottom_sheet.dart';

Future<dynamic> executeModelBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
      return BlocProvider(
        create: (context) => StripePaymentCubit(CheckoutRepoImpl()),
        child: const PaymentMethodBottomSheet(),
      );
    },
  );
}
