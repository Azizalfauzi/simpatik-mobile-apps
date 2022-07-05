import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simpatik_mobile_apps/views/pages/pages.dart';

part 'routes_state.dart';

class RoutesCubit extends Cubit<RoutesState> {
  RoutesCubit() : super(RoutesSplashScreen());
  Stream<RoutesState> mapEventToState(RoutesState state) async* {
    if (state is RoutesSplashScreen) {
      emit(RoutesSplashScreen());
    } else if (state is RoutesOnboardingScreen) {
      emit(RoutesOnboardingScreen());
    } else if (state is RoutesLoginScreen) {
      emit(RoutesLoginScreen());
    } else if (state is RoutesRegisterScreen) {
      emit(RoutesRegisterScreen());
    } else if (state is RoutesMainPage) {
      const int initial = 0;
      emit(const RoutesMainPage(initial));
    } else if (state is RoutesDetailScreen) {
      String longitude = '';
      String latutude = '';
      int idWisata = 0;
      String image = '';
      String name = '';
      String location = '';
      String deskripsi = '';
      double rating = 0.0;
      int price = 0;
      emit(RoutesDetailScreen(
        longitude,
        latutude,
        idWisata,
        image,
        name,
        location,
        deskripsi,
        price,
        rating,
      ));
    } else if (state is RoutesOrderTicketScreen) {
      int idWisata = 0;
      String image = '';
      String name = '';
      String location = '';
      String deskripsi = '';
      double rating = 0.0;
      int price = 0;
      emit(RoutesOrderTicketScreen(
        idWisata,
        image,
        name,
        location,
        deskripsi,
        price,
        rating,
      ));
    } else if (state is RoutesMyTicketScreen) {
      int id = 0;
      emit(RoutesMyTicketScreen(
        id,
      ));
    } else if (state is RoutesMyTicketStatusScreen) {
      int id = 0;
      emit(RoutesMyTicketStatusScreen(id));
    } else if (state is RoutesPetaLokasiScreen) {
      double longitude = 0.0;
      double latitude = 0.0;
      int idWisata = 0;
      String image = '';
      String name = '';
      String location = '';
      String deskripsi = '';
      double rating = 0.0;
      int price = 0;
      emit(RoutesPetaLokasiScreen(
        longitude,
        latitude,
        idWisata,
        image,
        name,
        location,
        deskripsi,
        price,
        rating,
      ));
    } else {
      emit(RoutesLoginScreen());
    }
  }
}
