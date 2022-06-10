part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DoubleBackToCloseApp(
        child: Center(
          child: Text("Home Page"),
        ),
        snackBar: SnackBar(
          content: Text('Tekan sekali lagi untuk keluar aplikasi'),
        ),
      ),
    );
  }
}
