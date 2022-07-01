part of 'pages.dart';

class MyTicketStatusPage extends StatefulWidget {
  final int id;
  const MyTicketStatusPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<MyTicketStatusPage> createState() => _MyTicketStatusPageState();
}

class _MyTicketStatusPageState extends State<MyTicketStatusPage> {
  @override
  void initState() {
    context.read<TransactionServicesCubit>().getDataDetailTranaksi(widget.id);
    return super.initState();
  }

  Widget header(
    String name,
  ) {
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
                  "Status My Ticket",
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
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: QrImage(
              data:
                  "https://flutter.dev/?gclid=CjwKCAjwk_WVBhBZEiwAUHQCmYc9zFHASSrHqhy_PZ8gDHFPF0WNH8DMeT0ZQFIN0S9_clsxdyLxYxoCjG8QAvD_BwE&gclsrc=aw.ds",
              size: 200,
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
                      name,
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

  Widget content(
      String name, String tanggalPesanan, int jumlahTiket, int statusTiket) {
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
                    name,
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
                    tanggalPesanan,
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
                      jumlahTiket.toString(),
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
                      (statusTiket != 3) ? "" : "Lunas",
                      style: orangeTextStyleMontserrat.copyWith(
                        fontWeight: light,
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
          // title deskripsi
        ],
      ),
    );
  }

  Widget footer() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 40,
      ),
      child: CustomButton(
        title: "Lunas",
        onTap: () {
          // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
          context.read<RoutesCubit>().emit(const RoutesMainPage(1));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<RoutesCubit>().emit(const RoutesMainPage(1));
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child:
                BlocBuilder<TransactionServicesCubit, TransactionServicesState>(
              builder: (context, state) {
                if (state is TransactionServicesGetDetailSuccess) {
                  return Column(
                    children: [
                      header(state.result.wisataName),
                      content(
                        state.result.namaPelanggan,
                        state.result.tanggalPesan,
                        state.result.jumlahTiket,
                        state.result.statusTransaksi,
                      ),
                      footer(),
                    ],
                  );
                } else if (state is TransactionServicesGetDetailFailed) {
                  return const SizedBox();
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
