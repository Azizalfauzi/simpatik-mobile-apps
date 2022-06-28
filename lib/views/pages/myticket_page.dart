part of 'pages.dart';

class MyTicketPage extends StatefulWidget {
  final String image;
  final String name;
  final DateTime date;
  final int jumlahtiket;
  final int totalBayar;
  const MyTicketPage({
    Key? key,
    required this.image,
    required this.name,
    required this.date,
    required this.jumlahtiket,
    required this.totalBayar,
  }) : super(key: key);

  @override
  State<MyTicketPage> createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
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
                  context.read<RoutesCubit>().emit(const RoutesMainPage(1));
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
                  "My Ticket",
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
            image: DecorationImage(
              image: AssetImage(
                widget.image,
              ),
              fit: BoxFit.cover,
            ),
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
                      widget.name,
                      style: blackTextStyleMontserrat.copyWith(
                        fontWeight: bold,
                        fontSize: 16,
                      ),
                    ),
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
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Pemesan",
                    style: blackTextStyleMontserrat.copyWith(
                        fontWeight: bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Aziz Alfauzi",
                    style: blackTextStyleMontserrat.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tanggal Pemesanan",
                    style: blackTextStyleMontserrat.copyWith(
                        fontWeight: bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${widget.date.year}-${widget.date.month}-${widget.date.day}",
                    style: blackTextStyleMontserrat.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 180,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jumlah Tiket",
                      style: blackTextStyleMontserrat.copyWith(
                          fontWeight: bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.jumlahtiket.toString(),
                      style: blackTextStyleMontserrat.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Status Tiket",
                      style: blackTextStyleMontserrat.copyWith(
                          fontWeight: bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Belum Lunas",
                      style: orangeTextStyleMontserrat.copyWith(
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Bayar",
                    style: blackTextStyleMontserrat.copyWith(
                        fontWeight: bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    NumberFormat.currency(
                      locale: 'id_ID',
                      decimalDigits: 0,
                      symbol: "IDR.",
                    ).format(widget.totalBayar),
                    style: orangeTextStyleMontserrat.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // title deskripsi
          Text(
            "Metode Pembayaran",
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
            "Lakukan pembayaran pada nomor rekening dibawah ini.Masa waktu tenggat tiket 1 hari",
            style: blackTextStyleMontserrat.copyWith(
              fontSize: 14,
              fontWeight: light,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "123-456-789",
                  style: blackTextStyleMontserrat.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                width: 120,
                height: 60,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        FlutterClipboard.copy('123-456-789')
                            .then((value) => print('copy success!'));
                      },
                      icon: const Icon(
                        Icons.copy,
                        color: kPrimaryColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        FlutterClipboard.copy('123-456-789')
                            .then((value) => print('copy success!'));
                      },
                      child: Text(
                        "Copy Text",
                        style: orangeTextStyleMontserrat.copyWith(
                            fontWeight: light),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget footer() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 10,
      ),
      child: Row(
        children: [
          Container(
            height: MyUtility(context).height / 16,
            width: 220,
            padding: EdgeInsets.all(MyUtility(context).width / 40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black12)),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Pilih Bukti bayar .img/.pdf",
                errorStyle:
                    const TextStyle(height: 0.5, fontStyle: FontStyle.italic),
                hintStyle: greyTextStyleMontserrat.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: SizedBox(
              height: MyUtility(context).height / 16,
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<RoutesCubit>()
                      .emit(RoutesMyTicketStatusScreen());
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
                  "Unggah Bukti bayar",
                  textAlign: TextAlign.center,
                  style: whiteTextStyleMontserrat.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<RoutesCubit>().emit(RoutesMainPage(1));
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
