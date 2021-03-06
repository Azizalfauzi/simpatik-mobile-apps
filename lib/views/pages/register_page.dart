part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  // data form
  String username = '';
  String notelp = '';
  String name = '';
  String alamat = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool _obscureText2 = true;
  void _toggle2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

  Widget header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: IconButton(
                  onPressed: () {
                    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
                    context.read<RoutesCubit>().emit(RoutesLoginScreen());
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                ),
              ),
              const Center(
                child: Image(
                  image: AssetImage(
                    "assets/images/ic_logo_primary_small.png",
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: blackTextStyleMontserrat.copyWith(
                    fontWeight: bold, fontSize: 28),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Daftarkan diri anda dengan mengisi form",
                style: greyTextStyleMontserrat.copyWith(
                    fontSize: 14, fontWeight: light),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.only(
          left: defaultMargin, right: defaultMargin, top: 30),
      child: Column(
        children: [
          Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "username",
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
                      hintText: "Masukan username anda",
                      errorStyle: const TextStyle(
                          height: 0.5, fontStyle: FontStyle.italic),
                      hintStyle: greyTextStyleMontserrat.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                          fontStyle: FontStyle.italic),
                    ),
                    onSaved: (String? value) {
                      username = value!;
                    },
                    validator: (value) {
                      if (value == "") {
                        return "Input tidak boleh kosong";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // penambahan name
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Masukan nama anda",
                      errorStyle: const TextStyle(
                          height: 0.5, fontStyle: FontStyle.italic),
                      hintStyle: greyTextStyleMontserrat.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                          fontStyle: FontStyle.italic),
                    ),
                    onSaved: (String? value) {
                      name = value!;
                    },
                    validator: (value) {
                      if (value == "") {
                        return "Input tidak boleh kosong";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "No Telepon",
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Masukan notelp anda",
                      errorStyle: const TextStyle(
                          height: 0.5, fontStyle: FontStyle.italic),
                      hintStyle: greyTextStyleMontserrat.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                          fontStyle: FontStyle.italic),
                    ),
                    onSaved: (String? value) {
                      notelp = value!;
                    },
                    validator: (value) {
                      if (value == "") {
                        return "Input tidak boleh kosong";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Masukan email anda",
                      errorStyle: const TextStyle(
                          height: 0.5, fontStyle: FontStyle.italic),
                      hintStyle: greyTextStyleMontserrat.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                          fontStyle: FontStyle.italic),
                    ),
                    onSaved: (String? value) {
                      email = value!;
                    },
                    validator: (value) {
                      if (value == "") {
                        return "Input tidak boleh kosong";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // penambahan alamat
                Text(
                  "Alamat",
                  style: greyTextStyleMontserrat,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: MyUtility(context).height / 10,
                  width: double.infinity,
                  padding: EdgeInsets.all(MyUtility(context).width / 40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black12)),
                  child: TextFormField(
                    maxLines: 8,
                    minLines: 6,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Masukan alamat anda",
                      errorStyle: const TextStyle(
                          height: 0.5, fontStyle: FontStyle.italic),
                      hintStyle: greyTextStyleMontserrat.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                          fontStyle: FontStyle.italic),
                    ),
                    onSaved: (String? value) {
                      alamat = value!;
                    },
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
                  "Kata Sandi",
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
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Masukan kata sandi anda",
                      errorStyle: const TextStyle(
                          height: 0.5, fontStyle: FontStyle.italic),
                      hintStyle: greyTextStyleMontserrat.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                          fontStyle: FontStyle.italic),
                      suffix: InkWell(
                        onTap: _toggle,
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 15.0,
                          color: kPrimaryGreyColor,
                        ),
                      ),
                    ),
                    onSaved: (String? value) {
                      password = value!;
                    },
                    validator: (value) {
                      if (value == "") {
                        return "Input tidak boleh kosong";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Konfirmasi Kata Sandi",
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
                    obscureText: _obscureText2,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Masukan konfirmasi kata sandi anda",
                      errorStyle: const TextStyle(
                          height: 0.5, fontStyle: FontStyle.italic),
                      hintStyle: greyTextStyleMontserrat.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                          fontStyle: FontStyle.italic),
                      suffix: InkWell(
                        onTap: _toggle2,
                        child: Icon(
                          _obscureText2
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 15.0,
                          color: kPrimaryGreyColor,
                        ),
                      ),
                    ),
                    onSaved: (String? value) {
                      confirmPassword = value!;
                    },
                    validator: (value) {
                      if (value == "") {
                        return "Input tidak boleh kosong";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ],
            ),
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
          BlocConsumer<AuthServicesCubit, AuthServicesState>(
            listener: (context, state) {
              if (state is AuthServicesRegisterSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(
                        "Berhasil melakukan pendaftaran akun\nSilahkan melakukan login"),
                  ),
                );
                context.read<RoutesCubit>().emit(RoutesLoginScreen());
              } else if (state is AuthServicesRegisterFailed) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text("Gagal melakukan pendaftaran akun !"),
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state is AuthServicesLoading) {
                return const Center(
                  child: SpinKitFadingCircle(
                    color: kPrimaryColor,
                    size: 50,
                  ),
                );
              }
              return CustomButton(
                title: "Register",
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    if (password == confirmPassword) {
                      print("username :" + username);
                      print("password :" + password);
                      print("confirmPassword :" + confirmPassword);
                      print("email :" + email);
                      print("name"+name);
                      print("alamat"+alamat);
                      print("notelp"+notelp);
                      // penambahan name dan alamat
                      context.read<AuthServicesCubit>().registerApp(
                            username,
                            password,
                            confirmPassword,
                            email,
                            name,
                            alamat,
                            notelp,
                          );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Password tidak sama!"),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Input tidak boleh kosong!"),
                      ),
                    );
                  }

                  // if (username == "" &&
                  //     email == "" &&
                  //     password == "" &&
                  //     confirmPassword == "") {
                  //       print(username);
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       backgroundColor: Colors.red,
                  //       content: Text("Input tidak boleh kosong!"),
                  //     ),
                  //   );
                  // } else {

                  // }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "sudah punya akun?",
                style: greyTextStyleMontserrat.copyWith(
                    fontWeight: light, fontSize: 12),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
                  context.read<RoutesCubit>().emit(RoutesLoginScreen());
                },
                child: Text(
                  "Login",
                  style: orangeTextStyleMontserrat.copyWith(
                      fontWeight: bold, fontSize: 12),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "disini",
                style: greyTextStyleMontserrat.copyWith(
                    fontWeight: bold, fontSize: 12),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
