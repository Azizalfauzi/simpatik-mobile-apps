part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Center(
              child: Image(
                image: AssetImage(
                  "assets/images/ic_logo_primary_small.png",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: blackTextStyleMontserrat.copyWith(
                      fontWeight: bold, fontSize: 28),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Masuk ke akun anda yang telah terdaftar",
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
                  // melakukan pergantian pada email untuk login
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
                        setState(() {
                          email = value!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Password",
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
                        hintText: "Masukan password anda",
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
                      validator: (String? value) {
                        return (value != null && value.contains('@'))
                            ? 'Do not use the @ char.'
                            : null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Lupa kata sandi ?",
                  style: greyTextStyleMontserrat.copyWith(
                      fontWeight: light, fontSize: 12),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<RoutesCubit>()
                        .emit(RoutesForgotPasswordScreen());
                  },
                  child: Text(
                    "Klik disini",
                    style: orangeTextStyleMontserrat.copyWith(
                        fontWeight: bold, fontSize: 12),
                  ),
                ),
              ],
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
          top: 100,
        ),
        child: Column(
          children: [
            BlocConsumer<AuthServicesCubit, AuthServicesState>(
              listener: (context, state) {
                if (state is AuthServicesLoginSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text("Berhasil login kedalam akun anda"),
                    ),
                  );
                  context.read<RoutesCubit>().emit(const RoutesMainPage(0));
                } else if (state is AuthServicesLoginFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text("Akun anda tidak ditemukan!"),
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
                  title: "Login",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      context
                          .read<AuthServicesCubit>()
                          .loginApp(email, password);
                    }
                    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
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
                  "Belum punya akun?",
                  style: greyTextStyleMontserrat.copyWith(
                      fontWeight: light, fontSize: 12),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
                    context.read<RoutesCubit>().emit(RoutesRegisterScreen());
                  },
                  child: Text(
                    "Register",
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
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            content(),
            footer(),
          ],
        ),
      ),
    );
  }
}
