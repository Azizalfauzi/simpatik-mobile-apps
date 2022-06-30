import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simpatik_mobile_apps/model/models.dart';

import '../../../services/services.dart';

part 'auth_services_state.dart';

class AuthServicesCubit extends Cubit<AuthServicesState> {
  AuthServicesCubit() : super(AuthServicesInitial());
  void loginApp(String username, String password) async {
    try {
      emit(AuthServicesLoading());
      LoginModel result = await AuthServices.loginApp(username, password);
      emit(AuthServicesLoginSuccess(result));
    } catch (e) {
      emit(AuthServicesLoginFailed(e.toString()));
    }
  }

  void registerApp(
    String username,
    String password,
    String confirmPassword,
    String email,
  ) async {
    try {
      emit(AuthServicesLoading());
      RegitserModel result = await AuthServices.registerApp(
        username,
        password,
        confirmPassword,
        email,
      );
      emit(AuthServicesRegisterSuccess(result));
    } catch (e) {
      emit(AuthServicesRegisterFailed(e.toString()));
    }
  }

  void logoutGlobal() {
    AuthServices.signOut();
  }
}
