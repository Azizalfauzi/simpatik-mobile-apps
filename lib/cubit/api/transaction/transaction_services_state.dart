part of 'transaction_services_cubit.dart';

abstract class TransactionServicesState extends Equatable {
  const TransactionServicesState();
  @override
  List<Object> get props => [];
}

class TransactionServicesInitial extends TransactionServicesState {}

class TransactionServicesLoading extends TransactionServicesState {}

class TransactionServicesCreateSuccess extends TransactionServicesState {
  final String result;
  const TransactionServicesCreateSuccess(this.result);
  @override
  List<Object> get props => [result];
}

class TransactionServicesCreateFailed extends TransactionServicesState {
  final String message;
  const TransactionServicesCreateFailed(this.message);
  @override
  List<Object> get props => [message];
}
