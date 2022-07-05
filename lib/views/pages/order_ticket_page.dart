part of 'pages.dart';

class OrderTicketPage extends StatefulWidget {
  final int idWisata;
  final String image;
  final String name;
  final String location;
  final String deskripsi;
  final int price;
  final double rate;
  const OrderTicketPage({
    Key? key,
    required this.idWisata,
    required this.image,
    required this.name,
    required this.location,
    required this.deskripsi,
    required this.price,
    required this.rate,
  }) : super(key: key);

  @override
  State<OrderTicketPage> createState() => _OrderTicketPageState();
}

class _OrderTicketPageState extends State<OrderTicketPage> {
  Uint8List convertBase64Image(String base64String) {
    return const Base64Decoder().convert(base64String.split(',').last);
  }

  DateTime? date;
  @override
  void initState() {
    return super.initState();
  }

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
                  context.read<RoutesCubit>().emit(RoutesDetailScreen(
                        "",
                        "",
                        widget.idWisata,
                        widget.image,
                        widget.name,
                        widget.location,
                        widget.deskripsi,
                        widget.price,
                        widget.rate,
                      ));
                  context.read<CounterCubit>().setOne();
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
                  "Order Detail",
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
          child: SizedBox(
            width: 180,
            height: 200,
            child: Image.memory(
              convertBase64Image(
                widget.image,
              ),
              gaplessPlayback: true,
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
                    Text(
                      widget.location,
                      style: blackTextStyleMontserrat.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 70,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 184, 175),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.rate.toString(),
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
            widget.deskripsi,
            style: blackTextStyleMontserrat.copyWith(
              fontSize: 14,
              fontWeight: light,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Tanggal Pembelian Ticket",
            style: blackTextStyleMontserrat.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black45,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5),
                    child: Text(
                      (date == null)
                          ? "Pilih Tanggal"
                          : "${date!.year}-${date!.month}-${date!.day}",
                      textAlign: TextAlign.start,
                      style: blackTextStyleMontserrat,
                    ),
                  ),
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                    if (newDate == null) return;
                    setState(() => date = newDate);
                  },
                  icon: const Icon(
                    Icons.date_range,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Jumlah Pembelian Ticket",
            style: blackTextStyleMontserrat.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total tiket anda',
                style: blackTextStyleMontserrat.copyWith(
                    fontSize: 14, fontWeight: light),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.read<CounterCubit>().decrementCounter();
                    },
                    child: Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 2.0,
                          color: kPrimaryColor,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: 10,
                          height: 2,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  BlocBuilder<CounterCubit, int>(
                    builder: (context, state) {
                      return Container(
                        height: 50,
                        width: 60,
                        padding: const EdgeInsets.only(
                          left: 25,
                          right: 10,
                          top: 18,
                        ),
                        child: Text(
                          state.toString(),
                          style: blackTextStyleMontserrat.copyWith(
                            fontWeight: bold,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<CounterCubit>().incrementCounter();
                    },
                    child: Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2.0, color: kPrimaryColor),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
                    BlocBuilder<CounterCubit, int>(
                      builder: (context, state) {
                        return Text(
                          NumberFormat.currency(
                            locale: 'id_ID',
                            decimalDigits: 0,
                            symbol: "IDR.",
                          ).format(widget.price * state),
                          style: orangeTextStyleMontserrat.copyWith(
                              fontSize: 16, fontWeight: bold),
                        );
                      },
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
            child: BlocConsumer<TransactionServicesCubit,
                TransactionServicesState>(
              listener: (context, state) {
                if (state is TransactionServicesCreateSuccess) {
                  context
                      .read<RoutesCubit>()
                      .emit(RoutesMyTicketScreen(state.result.id));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text("Transaksi berhasil dibuat"),
                    ),
                  );
                } else if (state is TransactionServicesCreateFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text("Gagal melakukan transaksi!"),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is TransactionServicesLoading) {
                  return const Center(
                    child: SpinKitFadingCircle(
                      color: kPrimaryColor,
                      size: 50,
                    ),
                  );
                }
                return ElevatedButton(
                  onPressed: () async {
                    SharedPreferences preferences =
                        await SharedPreferences.getInstance();
                    String? name = preferences.getString('name');
                    String? email = preferences.getString('email');
                    context.read<TransactionServicesCubit>().createTransaction(
                          1,
                          widget.idWisata,
                          name!,
                          email!,
                          "085332",
                          1,
                          context.read<CounterCubit>().state,
                          context.read<CounterCubit>().state * widget.price,
                          "data kosong",
                          "${date!.year}-${date!.month}-${date!.day}",
                        );
                    // print("id bank :" + 1.toString());
                    // print("id wisata" + widget.idWisata.toString());
                    // print("name pelanggan" + name!);
                    // print("email pelanggan" + email!);
                    // print("no hp pelanggan : 082222");
                    // print("status_transaksi : 1");
                    // print("jumlah tiket" +
                    //     context.read<CounterCubit>().state.toString());
                    // print("total bayar" +
                    //     (context.read<CounterCubit>().state * widget.price)
                    //         .toString());
                    // print("bukti bayar : data kosong");
                    // print("date" + "${date!.year}-${date!.month}-${date!.day}");
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
                );
              },
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
        context.read<RoutesCubit>().emit(RoutesDetailScreen(
              "",
              "",
              widget.idWisata,
              widget.image,
              widget.name,
              widget.location,
              widget.deskripsi,
              widget.price,
              widget.rate,
            ));
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
