part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
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
                    obscureText: _obscureText,
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
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 15.0,
                          color: kPrimaryGreyColor,
                        ),
                      ),
                    ),
                    onSaved: (String? value) {},
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
            title: "Register",
            onTap: () {
              // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
              context.read<RoutesCubit>().emit(const RoutesMainPage(0));
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
