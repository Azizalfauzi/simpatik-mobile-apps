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
                                  image: pageState.image,
                                  name: pageState.name,
                                  location: pageState.location,
                                  deskripsi: pageState.deskripsi,
                                  price: pageState.price,
                                  rate: pageState.rate,
                                )
                              : (pageState is RoutesOrderTicketScreen)
                                  ? OrderTicketPage(
                                      image: pageState.image,
                                      name: pageState.name,
                                      location: pageState.location,
                                      deskripsi: pageState.deskripsi,
                                      price: pageState.price,
                                      rate: pageState.rate,
                                    )
                                  : (pageState is RoutesMyTicketScreen)
                                      ? MyTicketPage(
                                          image: pageState.image,
                                          name: pageState.name,
                                          date: pageState.date,
                                          jumlahtiket: pageState.jumlahtiket,
                                          totalBayar: pageState.totalBayar,
                                        )
                                      : (pageState
                                              is RoutesMyTicketStatusScreen)
                                          ? const MyTicketStatusPage()
                                          : const SplashScreenPageGlobal(),
    );
  }
}
