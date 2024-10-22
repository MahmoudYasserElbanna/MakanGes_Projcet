import 'package:bloc/bloc.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/repos/checkout_repo.dart';
import 'package:makanges_app/features/checkout/presentation/data/models/stripe_payment_intent_input_model.dart';
import 'package:meta/meta.dart';

part 'stripe_payment_state.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkoutRepo) : super(StripePaymentInitial());
  final CheckoutRepo checkoutRepo;
  Future<void> makePayment(
      StripePaymentIntentInputModel stripePaymentIntentInputModel) async {
    emit(StripePaymentLoading());
    var data = await checkoutRepo.makePayment(
        stripePaymentIntentInputModel: stripePaymentIntentInputModel);
    data.fold(
      (ifFail) => emit(StripePaymentFailed(errMessage: ifFail.toString())),
      (ifSuccess) => emit(StripePaymentSuccess()),
    );
  }
}
