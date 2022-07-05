import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simpatik_mobile_apps/model/models.dart';

import '../../../services/services.dart';

part 'auth_services_state.dart';

class AuthServicesCubit extends Cubit<AuthServicesState> {
  AuthServicesCubit() : super(AuthServicesInitial());
  void loginApp(String email, String password) async {
    try {
      emit(AuthServicesLoading());
      LoginModel result = await AuthServices.loginApp(email, password);
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
    String name,
    String alamat,
    String noTelp,
  ) async {
    try {
      emit(AuthServicesLoading());
      RegisterModel result = await AuthServices.registerApp(
        username,
        password,
        confirmPassword,
        email,
        name,
        alamat,
        noTelp,
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
