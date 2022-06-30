part of 'routes_cubit.dart';

abstract class RoutesState extends Equatable {
  const RoutesState();
  @override
  List<Object> get props => [];
}

class RoutesSplashScreen extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesLoginScreen extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesOnboardingScreen extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesRegisterScreen extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesMainPage extends RoutesState {
  final int initial;
  const RoutesMainPage(this.initial);
  @override
  List<Object> get props => [initial];
}

class RoutesDetailScreen extends RoutesState {
  final int idWisata;
  final String image;
  final String name;
  final String location;
  final String deskripsi;
  final int price;
  final double rate;
  const RoutesDetailScreen(
    this.idWisata,
    this.image,
    this.name,
    this.location,
    this.deskripsi,
    this.price,
    this.rate,
  );
  @override
  List<Object> get props => [
        image,
        name,
        location,
        deskripsi,
        rate,
        price,
      ];
}

class RoutesOrderTicketScreen extends RoutesState {
  final int idWisata;
  final String image;
  final String name;
  final String location;
  final String deskripsi;
  final int price;
  final double rate;
  const RoutesOrderTicketScreen(
    this.idWisata,
    this.image,
    this.name,
    this.location,
    this.deskripsi,
    this.price,
    this.rate,
  );
  @override
  List<Object> get props => [
        idWisata,
        image,
        name,
        location,
        deskripsi,
        rate,
        price,
      ];
}

class RoutesMyTicketScreen extends RoutesState {
  final int id;
  const RoutesMyTicketScreen(
    this.id,
  );
  @override
  List<Object> get props => [id];
}

class RoutesMyTicketStatusScreen extends RoutesState {
  final int id;
  const RoutesMyTicketStatusScreen(this.id);
  @override
  List<Object> get props => [id];
}
