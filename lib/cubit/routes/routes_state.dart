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
