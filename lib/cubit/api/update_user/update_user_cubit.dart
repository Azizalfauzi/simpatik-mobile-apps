import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simpatik_mobile_apps/services/services.dart';

part 'update_user_state.dart';

class UpdateUserCubit extends Cubit<UpdateUserState> {
  UpdateUserCubit() : super(UpdateUserInitial());
  void updateUser(
    String name,
    String email,
    String notelp,
    String alamat,
  ) async {
    try {
      emit(UpdateUserLoading());
      int result = await UserServices.updateUser(
        name,
        email,
        notelp,
        alamat,
      );
      emit(UpdateUserSuccess(result));
    } catch (e) {
      emit(UpdateUserFailed(e.toString()));
    }
  }
}
