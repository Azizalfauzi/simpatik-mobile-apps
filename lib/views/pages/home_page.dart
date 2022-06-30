part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<WisataCubit>().getWisata();
    _checkNameData();
    return super.initState();
  }

  String nameUser = '';
  Future<void> _checkNameData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? name = preferences.getString('name');

    if (name != null) {
      setState(() {
        nameUser = name;
        print("data tidak kosong");
      });
    } else {
      setState(() {
        nameUser = "";
        print("data tidak kosong");
      });
    }
  }

  Widget header() {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffFF9384),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hello,",
                        style: whiteTextStyleMontserrat.copyWith(
                            fontWeight: bold, fontSize: 24),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        nameUser,
                        style: blackTextStyleMontserrat.copyWith(
                            fontWeight: bold, fontSize: 24),
                      ),
                    ],
                  ),
                  Text(
                    "Mau liburan kemana hari ini?",
                    style: whiteTextStyleMontserrat.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 70,
              height: 70,
              child: Image(
                image: AssetImage("assets/images/ic_logo_primary_small.png"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget contentOne() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            top: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wisata Popular",
                style: blackTextStyleMontserrat.copyWith(
                    fontWeight: bold, fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 350,
          width: double.infinity,
          child: BlocBuilder<WisataCubit, WisataState>(
            builder: (context, state) {
              if (state is WisataGetSuccess) {
                return ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: state.result
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.fromLTRB(
                                defaultMargin - 20,
                                0,
                                defaultMargin - 20,
                                0,
                              ),
                              child: CustomCardPopular(
                                idWisata: e.id,
                                image: e.wisataImage,
                                name: e.wisataName,
                                location: e.wisataName,
                                dekripsi: e.wisataName,
                                price: int.parse(e.tiketPrice),
                                rating: double.parse(e.wisataRating),
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ],
                );
              } else if (state is WisataGetFailed) {
                return const SizedBox();
              } else {
                return const SizedBox();
              }
            },
          ),
        )
      ],
    );
  }

  Widget contentTwo() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rekomendasi Wisata",
                style: blackTextStyleMontserrat.copyWith(
                    fontWeight: bold, fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 380,
          width: double.infinity,
          child: BlocBuilder<WisataCubit, WisataState>(
            builder: (context, state) {
              if (state is WisataGetSuccess) {
                return ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      children: state.result
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.fromLTRB(
                                defaultMargin - 10,
                                5,
                                defaultMargin - 10,
                                5,
                              ),
                              child: CustomCardRekomendasi(
                                image: e.wisataImage,
                                name: e.wisataName,
                                location: e.wisataName,
                                dekripsi: e.wisataName,
                                price: int.parse(e.tiketPrice),
                                rating: double.parse(e.wisataRating),
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ],
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DoubleBackToCloseApp(
          child: Column(
            children: [
              header(),
              contentOne(),
              contentTwo(),
            ],
          ),
          snackBar: const SnackBar(
            content: Text('Tekan sekali lagi untuk keluar aplikasi'),
          ),
        ),
      ),
    );
  }
}
