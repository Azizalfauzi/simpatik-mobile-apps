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
      int idWisata = 0;
      String image = '';
      String name = '';
      String location = '';
      String deskripsi = '';
      double rating = 0.0;
      int price = 0;
      emit(RoutesDetailScreen(
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
    } else {
      emit(RoutesLoginScreen());
    }
  }
}
