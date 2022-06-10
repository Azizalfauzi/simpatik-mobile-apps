part of 'pages.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DoubleBackToCloseApp(
        child: Center(
          child: Text("Transaction Page"),
        ),
        snackBar: SnackBar(
          content: Text('Tekan sekali lagi untuk keluar aplikasi'),
        ),
      ),
    );
  }
}
