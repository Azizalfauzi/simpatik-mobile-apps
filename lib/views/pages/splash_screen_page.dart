part of 'pages.dart';

class SplashScreenPageGlobal extends StatefulWidget {
  const SplashScreenPageGlobal({Key? key}) : super(key: key);

  @override
  _SplashScreenPageGlobalState createState() => _SplashScreenPageGlobalState();
}

class _SplashScreenPageGlobalState extends State<SplashScreenPageGlobal> {
  @override
  void initState() {
    _checkStatusPageToken();
    super.initState();
  }

  Future<void> _checkStatusPageToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int? statusPage = preferences.getInt('statuspage');

    if (statusPage != null) {
      var duration = const Duration(milliseconds: 2000);
      Timer(duration, () {
        // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
        context.read<RoutesCubit>().emit(RoutesLoginScreen());
      });
    } else {
      var duration = const Duration(milliseconds: 2000);
      Timer(duration, () {
        // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
        context.read<RoutesCubit>().emit(RoutesOnboardingScreen());
      });
    }
  }

  Widget imageCenter() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 200,
      width: 250,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/ic_logo_primary.png'),
        ),
      ),
    );
  }

  Widget centerContent() {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageCenter(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: Stack(
          children: [
            // warna paling bawah
            Container(
              color: const Color(0xffE0E0E0),
            ),
            //warna dasar splash
            SafeArea(
              child: Container(
                color: const Color(0xffE0E0E0),
              ),
            ),
            //content
            centerContent(),
          ],
        ),
      ),
    );
  }
}
