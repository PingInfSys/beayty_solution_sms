part of 'partnership_cubit.dart';

@immutable
sealed class PartnershipState {}

final class PartnershipInitial extends PartnershipState {}

final class GetSalonByIdAndPhoneNumberLoading extends PartnershipState {}

final class GetSalonByIdAndPhoneNumberSuccess extends PartnershipState {}

final class GetSalonByIdAndPhoneNumberError extends PartnershipState {
  final String error;
  GetSalonByIdAndPhoneNumberError({required this.error});
}
