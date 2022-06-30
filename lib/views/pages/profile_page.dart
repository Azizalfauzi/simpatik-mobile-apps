part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    _checkNameData();
    return super.initState();
  }

  String nameUser = '';
  String emailUser = '';
  Future<void> _checkNameData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? name = preferences.getString('name');
    String? email = preferences.getString('email');

    if (name != null && email != null) {
      setState(() {
        nameUser = name;
        emailUser = email;
        print("data tidak kosong");
      });
    } else {
      setState(() {
        nameUser = "";
        emailUser = "";
        print("data tidak kosong");
      });
    }
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 25,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile Anda",
                style: blackTextStyleMontserrat.copyWith(
                    fontWeight: bold, fontSize: 16),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: greyTextStyleMontserrat,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: MyUtility(context).height / 16,
            width: double.infinity,
            padding: EdgeInsets.all(MyUtility(context).width / 40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black12)),
            child: TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: emailUser,
                errorStyle:
                    const TextStyle(height: 0.5, fontStyle: FontStyle.italic),
                hintStyle: greyTextStyleMontserrat.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    fontStyle: FontStyle.italic),
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Username",
            style: greyTextStyleMontserrat,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: MyUtility(context).height / 16,
            width: double.infinity,
            padding: EdgeInsets.all(MyUtility(context).width / 40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black12)),
            child: TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: nameUser,
                errorStyle:
                    const TextStyle(height: 0.5, fontStyle: FontStyle.italic),
                hintStyle: greyTextStyleMontserrat.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    fontStyle: FontStyle.italic),
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Alamat",
            style: greyTextStyleMontserrat,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: MyUtility(context).height / 16,
            width: double.infinity,
            padding: EdgeInsets.all(MyUtility(context).width / 40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black12)),
            child: TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Bandung,Bojongsoang Jawa Barat",
                errorStyle:
                    const TextStyle(height: 0.5, fontStyle: FontStyle.italic),
                hintStyle: greyTextStyleMontserrat.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    fontStyle: FontStyle.italic),
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          const SizedBox(
            height: 15,
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
        top: 50,
      ),
      child: Column(
        children: [
          CustomButton(
            title: "Logout",
            onTap: () {
              context.read<AuthServicesCubit>().logoutGlobal();
              context.read<RoutesCubit>().emit(RoutesLoginScreen());
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DoubleBackToCloseApp(
          child: Column(
            children: [
              header(),
              content(),
              footer(),
            ],
          ),
          snackBar: const SnackBar(
            content: Text('Tekan sekali lagi untuk keluar aplikasi'),
          ),
        ),
      ),
    );
  }
}
