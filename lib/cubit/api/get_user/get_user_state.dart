part of 'get_user_cubit.dart';

abstract class GetUserState extends Equatable {
  const GetUserState();

  @override
  List<Object> get props => [];
}

class GetUserInitial extends GetUserState {}

class GetUserGetSuccess extends GetUserState {
  final UserGetModel resuly;
  const GetUserGetSuccess(this.resuly);
  @override
  List<Object> get props => [resuly];
}

class GetUserGetFailed extends GetUserState {
  final String message;
  const GetUserGetFailed(this.message);

  @override
  List<Object> get props => [message];
}

class GetUserLoading extends GetUserState {}
