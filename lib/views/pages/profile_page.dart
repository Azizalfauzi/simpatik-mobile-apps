part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DoubleBackToCloseApp(
        child: Center(
          child: Text("Profile Page"),
        ),
        snackBar: SnackBar(
          content: Text('Tekan sekali lagi untuk keluar aplikasi'),
        ),
      ),
    );
  }
}
