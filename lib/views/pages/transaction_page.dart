part of 'pages.dart';

class TransactionPage extends StatefulWidget {
  final int initialPage;
  const TransactionPage({Key? key, this.initialPage = 0}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int selectedPage = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    selectedPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBackToCloseApp(
        child: Stack(
          children: [
            SafeArea(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                },
                children: const [
                  Center(
                    child: TransactionOngoingPage(),
                  ),
                  Center(
                    child: TransactionHistoryPage(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Align(
                alignment: Alignment.topCenter,
                child: CustomTabbarWidget(
                  selectedIndex: selectedPage,
                  onTap: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                    pageController.jumpToPage(selectedPage);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: defaultMargin),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Transaksi Anda",
                  style: blackTextStyleMontserrat.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        snackBar: const SnackBar(
          content: Text('Tekan sekali lagi untuk keluar aplikasi'),
        ),
      ),
    );
  }
}
