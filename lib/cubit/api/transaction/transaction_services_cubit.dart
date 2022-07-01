import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simpatik_mobile_apps/model/models.dart';
import 'package:simpatik_mobile_apps/services/services.dart';
part 'transaction_services_state.dart';

class TransactionServicesCubit extends Cubit<TransactionServicesState> {
  TransactionServicesCubit() : super(TransactionServicesInitial());
  void createTransaction(
    int idBank,
    int idWisata,
    String namaPelanggan,
    String emailPelanggan,
    String noHpPelanggan,
    int statusTransaksi,
    int jumlahTiket,
    int totalBayar,
    String buktiBayar,
    String tanggalPesan,
  ) async {
    try {
      emit(TransactionServicesLoading());
      TransaksiModel result = await TransactionServices.createTransaction(
        idBank,
        idWisata,
        namaPelanggan,
        emailPelanggan,
        noHpPelanggan,
        statusTransaksi,
        jumlahTiket,
        totalBayar,
        buktiBayar,
        tanggalPesan,
      );
      emit(TransactionServicesCreateSuccess(result));
    } catch (e) {
      emit(TransactionServicesCreateFailed(e.toString()));
    }
  }

  void getDataTranaksi() async {
    try {
      emit(TransactionServicesLoading());
      List<StatusTransaksiModel> result =
          await TransactionServices.getDataTransaksi();
      emit(TransactionServicesGetSuccess(result));
    } catch (e) {
      emit(TransactionServicesGetFailed(e.toString()));
    }
  }

  void getDataDetailTranaksi(int id) async {
    try {
      emit(TransactionServicesLoading());
      TransaksiDetailData result =
          await TransactionServices.getDetailTranasksi(id);
      emit(TransactionServicesGetDetailSuccess(result));
    } catch (e) {
      emit(TransactionServicesGetDetailFailed(e.toString()));
    }
  }
}
