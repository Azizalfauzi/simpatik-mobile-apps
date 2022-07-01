part of 'update_transaksi_cubit.dart';

abstract class UpdateTransaksiState extends Equatable {
  const UpdateTransaksiState();

  @override
  List<Object> get props => [];
}

class UpdateTransaksiInitial extends UpdateTransaksiState {}
class UpdateTransaksiLoading extends UpdateTransaksiState {}
class UpdateTransaksiSuccess extends UpdateTransaksiState {
  final int result;
  const UpdateTransaksiSuccess(this.result);
  
  @override
  List<Object> get props => [result];
}
class UpdateTransaksiFailed extends UpdateTransaksiState {
  final String message;
  const UpdateTransaksiFailed(this.message);
  @override
  List<Object> get props => [message];
}
