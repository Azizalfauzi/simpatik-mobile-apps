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
  final String image;
  final String name;
  final String location;
  final String deskripsi;
  final int price;
  final int rate;
  const RoutesDetailScreen(
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
  final String image;
  final String name;
  final String location;
  final String deskripsi;
  final int price;
  final int rate;
 const RoutesOrderTicketScreen(
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

class RoutesMyTicketScreen extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesMyTicketStatusScreen extends RoutesState {
  @override
  List<Object> get props => [];
}
