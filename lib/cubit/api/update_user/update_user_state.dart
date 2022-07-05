part of 'update_user_cubit.dart';

abstract class UpdateUserState extends Equatable {
  const UpdateUserState();

  @override
  List<Object> get props => [];
}

class UpdateUserInitial extends UpdateUserState {}

class UpdateUserLoading extends UpdateUserState {}

class UpdateUserSuccess extends UpdateUserState {
  final int result;
  const UpdateUserSuccess(this.result);

  @override
  List<Object> get props => [result];
}

class UpdateUserFailed extends UpdateUserState {
  final String message;
  const UpdateUserFailed(this.message);

  @override
  List<Object> get props => [message];
}
