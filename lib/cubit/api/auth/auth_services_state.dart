part of 'auth_services_cubit.dart';

abstract class AuthServicesState extends Equatable {
  const AuthServicesState();
  @override
  List<Object> get props => [];
}

class AuthServicesInitial extends AuthServicesState {}

class AuthServicesLoading extends AuthServicesState {}

class AuthServicesLoginSuccess extends AuthServicesState {
  final LoginModel result;
  const AuthServicesLoginSuccess(this.result);
  @override
  List<Object> get props => [result];
}

class AuthServicesLoginFailed extends AuthServicesState {
  final String message;
  const AuthServicesLoginFailed(this.message);
  @override
  List<Object> get props => [message];
}

class AuthServicesRegisterSuccess extends AuthServicesState {
  final RegitserModel result;
  const AuthServicesRegisterSuccess(this.result);
  @override
  List<Object> get props => [result];
}

class AuthServicesRegisterFailed extends AuthServicesState {
  final String message;
  const AuthServicesRegisterFailed(this.message);
  @override
  List<Object> get props => [message];
}
