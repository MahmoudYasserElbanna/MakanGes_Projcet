part of 'stripe_payment_cubit.dart';

@immutable
sealed class StripePaymentState {}

final class StripePaymentInitial extends StripePaymentState {}

final class StripePaymentLoading extends StripePaymentState {}

final class StripePaymentFailed extends StripePaymentState {
  final String errMessage;

  StripePaymentFailed({required this.errMessage});
}

final class StripePaymentSuccess extends StripePaymentState {}
