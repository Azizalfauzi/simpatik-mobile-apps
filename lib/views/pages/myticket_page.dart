part of 'pages.dart';

class MyTicketPage extends StatefulWidget {
  final int id;

  const MyTicketPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<MyTicketPage> createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
  bool isUpload = false;
  String fileName = '';
  File? _image;
  File? getFile;
  String? namaFile;
  int idWisata = 0;
  int jumlahTiket = 0;
  int totalBayar = 0;
  String tanggalPesanan = '';

  Future pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    final imageName = File(image!.name);

    this.namaFile = imageName.toString();
    try {
      // final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      // ignore: unnecessary_null_comparison
      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() {
        _image = imageTemp;
      });
      // ignore: nullable_type_in_catch_clause
    } on PlatformException catch (e) {
      print('Failed cause: $e');
    }
  }

  @override
  void initState() {
    context.read<TransactionServicesCubit>().getDataDetailTranaksi(widget.id);
    return super.initState();
  }

  Widget header(
    String image,
    String namelokasi,
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
            image: const DecorationImage(
              image: AssetImage(
                "assets/images/image_destination1.png",
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
                      namelokasi,
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

  Widget content(String name, String tanggalPesan, int jumlahTiket,
      int statusTiket, int totalBayar) {
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
                    tanggalPesan,
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
                      (statusTiket == 1)
                          ? "Belum Lunas"
                          : (statusTiket == 2)
                              ? "Sedang diverifikasi"
                              : "Belum Lunas",
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
                    ).format(totalBayar),
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

  Widget footer(int statusTiket) {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 10,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 55,
                width: 220,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  color: kSecondaryGreyColor,
                  radius: const Radius.circular(5),
                  strokeWidth: 1,
                  dashPattern: [8, 4],
                  child: Center(
                    child: SizedBox(
                      width: MyUtility(context).width / 2.5,
                      child: Text(
                        (statusTiket != 1)
                            ? "Dalam proses verifikasi"
                            : (_image == null)
                                ? "Unggah bukti bayar"
                                : fileName = _image!.path.split('/').last,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: greyTextStyleMontserrat.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              (statusTiket != 1)
                  ? Expanded(
                      child: SizedBox(
                        height: MyUtility(context).height / 16,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kSecondaryGreyColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide.none,
                              ),
                            ),
                          ),
                          child: Text(
                            "Pilih Bukti bayar",
                            textAlign: TextAlign.center,
                            style: whiteTextStyleMontserrat.copyWith(
                              fontWeight: medium,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Expanded(
                      child: SizedBox(
                        height: MyUtility(context).height / 16,
                        child: ElevatedButton(
                          onPressed: () {
                            pickImage();
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kPrimaryColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide.none,
                              ),
                            ),
                          ),
                          child: Text(
                            "Pilih Bukti bayar",
                            textAlign: TextAlign.center,
                            style: whiteTextStyleMontserrat.copyWith(
                              fontWeight: medium,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          (_image == null)
              ? SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(kSecondaryGreyColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                    child: Text(
                      "Unggah Bukti Bayar",
                      style: whiteTextStyleMontserrat.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              : (statusTiket == 2)
                  ? SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kPrimaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide.none,
                            ),
                          ),
                        ),
                        child: Text(
                          "Menunggu Verifikasi",
                          style: whiteTextStyleMontserrat.copyWith(
                            fontWeight: medium,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  : BlocConsumer<UpdateTransaksiCubit, UpdateTransaksiState>(
                      listener: (context, state) {
                        if (state is UpdateTransaksiSuccess) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.green,
                              content: Text(
                                  "Berhasil unggah bukti bayar\nSilahkan menunggu proses verifikasi"),
                            ),
                          );
                          context
                              .read<RoutesCubit>()
                              .emit(const RoutesMainPage(1));
                        } else if (state is UpdateTransaksiFailed) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Gagal unggah bukti bayar!"),
                            ),
                          );
                        }
                      },
                      builder: (context, state) {
                        if (state is UpdateTransaksiLoading) {
                          return const Center(
                            child: SpinKitFadingCircle(
                              color: kPrimaryColor,
                              size: 50,
                            ),
                          );
                        }
                        return CustomButton(
                          title: "Unggah Bukti Bayar",
                          onTap: () async {
                            SharedPreferences preferences =
                                await SharedPreferences.getInstance();
                            String? name = preferences.getString('name');
                            String? email = preferences.getString('email');
                            // print("id wisata :" + idWisata.toString());
                            // print("name pelanggan" + name!);
                            // print("email pelanggan" + email!);
                            // print("no hp pelanggan : 082222");
                            // print("status_transaksi : 1");
                            // print("jumlah tiket" + jumlahTiket.toString());
                            // print("total bayar" + totalBayar.toString());
                            // print("bukti bayar :" + fileName);
                            // print("date " + tanggalPesanan);
                            context
                                .read<UpdateTransaksiCubit>()
                                .updateTransaction(
                                  widget.id,
                                  1,
                                  idWisata,
                                  name!,
                                  email!,
                                  "085332",
                                  2,
                                  jumlahTiket,
                                  totalBayar,
                                  fileName,
                                  tanggalPesanan,
                                );
                          },
                        );
                      },
                    ),
          const SizedBox(
            height: 50,
          ),
        ],
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
                  idWisata = state.result.idWisata;
                  jumlahTiket = state.result.jumlahTiket;
                  totalBayar = int.parse(state.result.totalHarga);
                  tanggalPesanan = state.result.tanggalPesan;
                  return Column(
                    children: [
                      header(
                        state.result.buktiBayar,
                        state.result.wisataName,
                      ),
                      content(
                        state.result.namaPelanggan,
                        state.result.tanggalPesan,
                        state.result.jumlahTiket,
                        state.result.statusTransaksi,
                        int.parse(state.result.totalHarga),
                      ),
                      footer(state.result.statusTransaksi),
                    ],
                  );
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
