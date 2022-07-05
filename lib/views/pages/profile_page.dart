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
    context.read<GetUserCubit>().getUser();
    return super.initState();
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _notelpController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();

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
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                errorStyle:
                    const TextStyle(height: 0.5, fontStyle: FontStyle.italic),
                hintStyle: greyTextStyleMontserrat.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    fontStyle: FontStyle.italic),
              ),
              controller: _emailController,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Name",
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
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                errorStyle:
                    const TextStyle(height: 0.5, fontStyle: FontStyle.italic),
                hintStyle: greyTextStyleMontserrat.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    fontStyle: FontStyle.italic),
              ),
              controller: _nameController,
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
            child: TextField(
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
              // controller: _nameController,
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
              decoration: InputDecoration(
                border: InputBorder.none,
                errorStyle:
                    const TextStyle(height: 0.5, fontStyle: FontStyle.italic),
                hintStyle: greyTextStyleMontserrat.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    fontStyle: FontStyle.italic),
              ),
              controller: _alamatController,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "No telepon",
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
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                errorStyle:
                    const TextStyle(height: 0.5, fontStyle: FontStyle.italic),
                hintStyle: greyTextStyleMontserrat.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    fontStyle: FontStyle.italic),
              ),
              controller: _notelpController,
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
        bottom: 100,
      ),
      child: Column(
        children: [
          BlocConsumer<UpdateUserCubit, UpdateUserState>(
            listener: (context, state) {
              if (state is UpdateUserSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text("Berhasil melakukan update user"),
                  ),
                );
                context.read<RoutesCubit>().emit(const RoutesMainPage(0));
              } else if (state is UpdateUserFailed) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text("Gagal update user!"),
                  ),
                );
              }
            },
            builder: (context, state) {
               if (state is UpdateUserCubit) {
                  return const Center(
                    child: SpinKitFadingCircle(
                      color: kPrimaryColor,
                      size: 50,
                    ),
                  );
                }
              return CustomButton(
                title: "Update User",
                onTap: () {
                  context.read<UpdateUserCubit>().updateUser(
                      _nameController.text,
                      _emailController.text,
                      _notelpController.text,
                      _alamatController.text);
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
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
          child: BlocBuilder<GetUserCubit, GetUserState>(
            builder: (context, state) {
              if (state is GetUserGetSuccess) {
                _emailController.text = state.resuly.email;
                _nameController.text = state.resuly.name;
                _notelpController.text = state.resuly.notelp;
                _alamatController.text = state.resuly.alamat;
                return Column(
                  children: [
                    header(),
                    content(),
                    footer(),
                  ],
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          snackBar: const SnackBar(
            content: Text('Tekan sekali lagi untuk keluar aplikasi'),
          ),
        ),
      ),
    );
  }
}
