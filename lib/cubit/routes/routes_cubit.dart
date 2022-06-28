import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

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
      String image = '';
      String name = '';
      String location = '';
      String deskripsi = '';
      int rating = 0;
      int price = 0;
      emit(RoutesDetailScreen(
        image,
        name,
        location,
        deskripsi,
        price,
        rating,
      ));
    } else if (state is RoutesOrderTicketScreen) {
      String image = '';
      String name = '';
      String location = '';
      String deskripsi = '';
      int rating = 0;
      int price = 0;
      emit(RoutesOrderTicketScreen(
        image,
        name,
        location,
        deskripsi,
        price,
        rating,
      ));
    } else if (state is RoutesMyTicketScreen) {
      String image = '';
      String name = '';
      DateTime date = DateTime.now();
      int jumlahtiket = 0;
      int totalBayar = 0;
      emit(RoutesMyTicketScreen(
        image,
        name,
        date,
        jumlahtiket,
        totalBayar,
      ));
    } else if (state is RoutesMyTicketStatusScreen) {
      emit(RoutesMyTicketStatusScreen());
    } else {
      emit(RoutesLoginScreen());
    }
  }
}
