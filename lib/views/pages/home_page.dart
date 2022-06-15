part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        "Aziz Alfauzi",
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
          height: 400,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: mockPopular
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.fromLTRB(
                          defaultMargin - 10,
                          0,
                          defaultMargin - 10,
                          0,
                        ),
                        child: CustomCardPopular(
                          image: e.image,
                          name: e.name,
                          location: e.location,
                          rating: e.rating,
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
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
            top: 20,
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
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: mockRekomendasi
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.fromLTRB(
                          defaultMargin - 10,
                          5,
                          defaultMargin - 10,
                          5,
                        ),
                        child: CustomCardRekomendasi(
                          id: e.id,
                          title: e.name,
                          location: e.location,
                          image: e.image,
                          star: e.star,
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
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
