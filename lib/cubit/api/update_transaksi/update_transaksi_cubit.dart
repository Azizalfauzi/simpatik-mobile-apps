import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simpatik_mobile_apps/services/services.dart';

part 'update_transaksi_state.dart';

class UpdateTransaksiCubit extends Cubit<UpdateTransaksiState> {
  UpdateTransaksiCubit() : super(UpdateTransaksiInitial());
  void updateTransaction(
    int idTransaksi,
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
      emit(UpdateTransaksiLoading());
      int result = await TransactionServices.updateTransaksi(
        idTransaksi,
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
      emit(UpdateTransaksiSuccess(result));
    } catch (e) {
      emit(UpdateTransaksiFailed(e.toString()));
    }
  }
}
