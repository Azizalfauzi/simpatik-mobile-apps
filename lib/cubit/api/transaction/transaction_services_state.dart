part of 'transaction_services_cubit.dart';

abstract class TransactionServicesState extends Equatable {
  const TransactionServicesState();
  @override
  List<Object> get props => [];
}

class TransactionServicesInitial extends TransactionServicesState {}

class TransactionServicesLoading extends TransactionServicesState {}

class TransactionServicesCreateSuccess extends TransactionServicesState {
  final TransaksiModel result;
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

class TransactionServicesGetSuccess extends TransactionServicesState {
  final List<StatusTransaksiModel> result;
  const TransactionServicesGetSuccess(this.result);
  @override
  List<Object> get props => [result];
}

class TransactionServicesGetFailed extends TransactionServicesState {
  final String message;
  const TransactionServicesGetFailed(this.message);
  @override
  List<Object> get props => [message];
}

class TransactionServicesGetDetailSuccess extends TransactionServicesState {
  final TransaksiDetailData result;
  const TransactionServicesGetDetailSuccess(this.result);
  @override
  List<Object> get props => [result];
}

class TransactionServicesGetDetailFailed extends TransactionServicesState {
  final String message;
  const TransactionServicesGetDetailFailed(this.message);
  @override
  List<Object> get props => [message];
}
