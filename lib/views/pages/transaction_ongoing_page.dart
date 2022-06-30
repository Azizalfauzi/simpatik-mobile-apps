part of 'pages.dart';

class TransactionOngoingPage extends StatefulWidget {
  const TransactionOngoingPage({Key? key}) : super(key: key);

  @override
  State<TransactionOngoingPage> createState() => _TransactionOngoingPageState();
}

class _TransactionOngoingPageState extends State<TransactionOngoingPage> {
  @override
  void initState() {
    context.read<TransactionServicesCubit>().getDataTranaksi();
    super.initState();
  }

  Widget contentOnGoingTransaction() {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Column(
        children: [
          SizedBox(
            height: 700,
            width: double.infinity,
            child:
                BlocBuilder<TransactionServicesCubit, TransactionServicesState>(
              builder: (context, state) {
                if (state is TransactionServicesGetSuccess) {
                  if (state.result.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/ic_shopping_grey.png'),
                              ),
                            ),
                          ),
                          Text(
                            "Belum ada transaksi",
                            style: blackTextStyleMontserrat,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 8, bottom: 100),
                      itemCount: state.result.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        var dataTransaction = state.result[index];
                        if (dataTransaction.statusTransaksi != 1) {
                          return const SizedBox();
                        } else {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(
                                defaultMargin, 0, defaultMargin, defaultMargin),
                            child: GestureDetector(
                              onTap: () {
                                context.read<RoutesCubit>().emit(
                                    RoutesMyTicketScreen(dataTransaction.id));
                              },
                              child: CustomCardOnGoing(
                                id: dataTransaction.id,
                                name: dataTransaction.namaPelanggan,
                                location: dataTransaction.wisataName,
                                image: "",
                                rate: dataTransaction.id,
                                statusTranasksi:
                                    dataTransaction.statusTransaksi,
                              ),
                            ),
                          );
                        }
                      },
                    );
                  }
                } else if (state is TransactionServicesGetFailed) {
                  return const SizedBox();
                } else {
                  return const SizedBox();
                }
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            contentOnGoingTransaction(),
          ],
        ),
      ),
    );
  }
}
