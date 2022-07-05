import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simpatik_mobile_apps/model/models.dart';
import 'package:simpatik_mobile_apps/services/services.dart';

part 'get_user_state.dart';

class GetUserCubit extends Cubit<GetUserState> {
  GetUserCubit() : super(GetUserInitial());
  void getUser() async {
    try {
      emit(GetUserLoading());
      UserGetModel result =
          await UserServices.getDataUser();
      emit(GetUserGetSuccess(result));
    } catch (e) {
      emit(GetUserGetFailed(e.toString()));
    }
  }
}
