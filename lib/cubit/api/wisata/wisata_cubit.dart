import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../model/models.dart';
import '../../../services/services.dart';

part 'wisata_state.dart';

class WisataCubit extends Cubit<WisataState> {
  WisataCubit() : super(WisataInitial());
  void getWisata() async {
    try {
      emit(WisataLoading());
      List<WisataModel> result =
          await TempatWisataServices.getDataWisata();
      emit(WisataGetSuccess(result));
    } catch (e) {
      emit(WisataGetFailed(e.toString()));
    }
  }
}
