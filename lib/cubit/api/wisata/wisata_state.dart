part of 'wisata_cubit.dart';

abstract class WisataState extends Equatable {
  const WisataState();

  @override
  List<Object> get props => [];
}

class WisataInitial extends WisataState {}

class WisataLoading extends WisataState {}

class WisataGetSuccess extends WisataState {
  final List<WisataModel> result;
  const WisataGetSuccess(this.result);
  @override
  List<Object> get props => [result];
}

class WisataGetFailed extends WisataState {
  final String message;
  const WisataGetFailed(this.message);
  @override
  List<Object> get props => [message];
}
