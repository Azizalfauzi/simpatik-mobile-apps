part of 'pages.dart';

// dilakukan penambahan page baru untuk forgot page
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  Widget header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 20),
          child: IconButton(
            onPressed: () {
              context.read<RoutesCubit>().emit(RoutesLoginScreen());
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
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
                "Forgot Password",
                style: blackTextStyleMontserrat.copyWith(
                    fontWeight: bold, fontSize: 28),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Masukan email untuk mendapatkan pesan email\nUntuk dilakukan perubahan",
                style: greyTextStyleMontserrat.copyWith(
                    fontSize: 14, fontWeight: light),
              ),
            ],
          ),
        )
      ],
    );
  }

  final _formKey = GlobalKey<FormState>();
  String email = '';
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
                  "Masukan email ",
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
        top: 100,
      ),
      child: Column(
        children: [
          CustomButton(
            title: "Kirim email verifikasi",
            onTap: () {
              context.read<RoutesCubit>().emit(RoutesLoginScreen());
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          context.read<RoutesCubit>().emit(RoutesLoginScreen());
          return false;
        },
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
