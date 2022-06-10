part of 'pages.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  void _addStatusPage() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var statusPage = 1;
    await preferences.setInt('statuspage', statusPage);
  }

  void _onIntroEnd() {
    context.read<RoutesCubit>().emit(RoutesLoginScreen());
    _addStatusPage();
  }

  Widget _buildImage(String assetName, [double width = 250]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      titleTextStyle:
          blackTextStyleMontserrat.copyWith(fontWeight: bold, fontSize: 26),
      bodyTextStyle: blackTextStyleMontserrat.copyWith(fontWeight: light),
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: const Color(0xffE0E0E0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      globalBackgroundColor: const Color(0xffE0E0E0),
      pages: [
        PageViewModel(
          title: "Pesan tiket liburan anda",
          body:
              "Pesan tiket liburan anda\nhanya dengan satu klik\nuntuk mendapatkan liburan\nyang anda inginkan.",
          image: _buildImage('ic_onboard_1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Nikmati liburan anda",
          body:
              "Nikmati destinasi wisata yang\ntelah disediakan oleh aplikasi\nwisata yang ada di kota Bandung",
          image: _buildImage('ic_onboard_1.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(
        Icons.arrow_back,
        color: Color(0xffFF725E),
      ),
      skip: const Text(
        'Skip',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xffFF725E),
        ),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Color(0xffFF725E),
      ),
      done: const Text(
        'Done',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xffFF725E),
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeColor: Color(0xffFF725E),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color(0xffE0E0E0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
