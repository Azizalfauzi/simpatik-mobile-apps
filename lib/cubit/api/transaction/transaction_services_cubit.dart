import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simpatik_mobile_apps/services/services.dart';
part 'transaction_services_state.dart';

class TransactionServicesCubit extends Cubit<TransactionServicesState> {
  TransactionServicesCubit() : super(TransactionServicesInitial());
  void createTransaction(
    String idBank,
    String idWisata,
    String namaPelanggan,
    String emailPelanggan,
    String noHpPelanggan,
    int statusTransaksi,
    int jumlahTiket,
    int totalBayar,
    String buktiBayar,
  ) async {
    try {
      emit(TransactionServicesLoading());
      String result = await TransactionServices.createTransaction(
        idBank,
        idWisata,
        namaPelanggan,
        emailPelanggan,
        noHpPelanggan,
        statusTransaksi,
        jumlahTiket,
        totalBayar,
        buktiBayar,
      );
      emit(TransactionServicesCreateSuccess(result));
    } catch (e) {
      emit(TransactionServicesCreateFailed(e.toString()));
    }
  }
}
