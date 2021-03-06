part of 'pages.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({Key? key}) : super(key: key);

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutesCubit, RoutesState>(
      builder: (_, pageState) => (pageState is RoutesSplashScreen)
          ? const SplashScreenPageGlobal()
          : (pageState is RoutesOnboardingScreen)
              ? const OnBoardingPage()
              : (pageState is RoutesLoginScreen)
                  ? const LoginPage()
                  : (pageState is RoutesRegisterScreen)
                      ? const RegisterPage()
                      : (pageState is RoutesMainPage)
                          ? MainPage(
                              initialPage: pageState.initial,
                            )
                          : (pageState is RoutesDetailScreen)
                              ? DetailPage(
                                  longitude: pageState.longitude,
                                  latitude: pageState.latitude,
                                  idWisata: pageState.idWisata,
                                  image: pageState.image,
                                  name: pageState.name,
                                  location: pageState.location,
                                  deskripsi: pageState.deskripsi,
                                  price: pageState.price,
                                  rate: pageState.rate,
                                )
                              : (pageState is RoutesOrderTicketScreen)
                                  ? OrderTicketPage(
                                      idWisata: pageState.idWisata,
                                      image: pageState.image,
                                      name: pageState.name,
                                      location: pageState.location,
                                      deskripsi: pageState.deskripsi,
                                      price: pageState.price,
                                      rate: pageState.rate,
                                    )
                                  : (pageState is RoutesMyTicketScreen)
                                      ? MyTicketPage(
                                          id: pageState.id,
                                        )
                                      : (pageState
                                              is RoutesMyTicketStatusScreen)
                                          ? MyTicketStatusPage(
                                              id: pageState.id,
                                            )
                                          : (pageState
                                                  is RoutesPetaLokasiScreen)
                                              ? PetaLokasiPage(
                                                  longitude:
                                                      pageState.longitude,
                                                  latitude: pageState.latitude,
                                                  idWisata: pageState.idWisata,
                                                  image: pageState.image,
                                                  name: pageState.name,
                                                  lokasi: pageState.location,
                                                  deskripsi:
                                                      pageState.deskripsi,
                                                  price: pageState.price,
                                                  rate: pageState.rate,
                                                )
                                              : (pageState
                                                      is RoutesForgotPasswordScreen)
                                                  ? const ForgotPasswordPage()
                                                  : const SplashScreenPageGlobal(),
    );
  }
}
