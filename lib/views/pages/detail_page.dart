part of 'pages.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Widget header() {
    return Column(
      children: [
        // header back and title
        Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: IconButton(
                onPressed: () {
                  context.read<RoutesCubit>().emit(const RoutesMainPage(0));
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Detail",
                  style: blackTextStyleMontserrat.copyWith(
                      fontSize: 20, fontWeight: bold),
                ),
              ),
            ),
            const SizedBox(
              width: 60,
              height: 60,
            ),
          ],
        ),
        // image
        Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: defaultMargin,
            right: defaultMargin,
          ),
          width: double.infinity,
          height: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey,
          ),
        ),
        // header text
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            right: defaultMargin,
            left: defaultMargin,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Farm House Lembang",
                      style: blackTextStyleMontserrat.copyWith(
                        fontWeight: bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Lembang,Bandung Jawa Barat",
                      style: blackTextStyleMontserrat.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 184, 175),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "4.5",
                      style:
                          blackTextStyleMontserrat.copyWith(fontWeight: bold),
                    ),
                    const Icon(
                      Icons.star,
                      size: 25,
                      color: Color(0xffFE7764),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            top: 20,
          ),
          child: Container(
            height: 2,
            width: double.infinity,
            color: const Color(0xffFE7764),
          ),
        )
      ],
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          // title deskripsi
          Text(
            "Deksripsi",
            style: blackTextStyleMontserrat.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // deskripsi
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            style: blackTextStyleMontserrat.copyWith(
              fontSize: 14,
              fontWeight: light,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Fasilitas yang disediakan",
            style: blackTextStyleMontserrat.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: mockFasilitas
                      .map(
                        (e) => const Padding(
                          padding: EdgeInsets.fromLTRB(
                            10,
                            0,
                            defaultMargin - 10,
                            0,
                          ),
                          child: CustomCardFasilitas(),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget footer() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
        bottom: 50,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Harga Tiket",
                  style: blackTextStyleMontserrat.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "IDR 25.000",
                      style: orangeTextStyleMontserrat.copyWith(
                          fontSize: 16, fontWeight: bold),
                    ),
                    Text(
                      "/Orang",
                      style: blackTextStyleMontserrat.copyWith(
                          fontSize: 16, fontWeight: light),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 150,
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                context.read<RoutesCubit>().emit(RoutesOrderTicketScreen());
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide.none,
                  ),
                ),
              ),
              child: Text(
                "Get Ticket",
                style: whiteTextStyleMontserrat.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<RoutesCubit>().emit(const RoutesMainPage(0));
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                header(),
                content(),
                footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
