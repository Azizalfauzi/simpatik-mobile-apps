part of 'pages.dart';

class OrderTicketPage extends StatefulWidget {
  const OrderTicketPage({Key? key}) : super(key: key);

  @override
  State<OrderTicketPage> createState() => _OrderTicketPageState();
}

class _OrderTicketPageState extends State<OrderTicketPage> {
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
                  context.read<RoutesCubit>().emit(RoutesDetailScreen());
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
            "Tanggal Pembelian Ticket",
            style: blackTextStyleMontserrat.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
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
                          ).format(25000 * state),
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
            child: ElevatedButton(
              onPressed: () {
                context.read<RoutesCubit>().emit(RoutesMyTicketScreen());
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
        context.read<RoutesCubit>().emit(RoutesDetailScreen());
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
