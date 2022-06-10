part of 'theme.dart';


const double defaultMargin = 24.0;
const double defaultRadius = 18.0;

const Color kPrimaryColor = Color(0xFFFD7764);
const Color kSecondaryColor = Color(0xffFFA939);
const Color kOrangeColor = Color(0xFFFFB550);
const Color kThirdColor = Color(0xff007999);
const Color kBlackColor = Color(0xff36414C);
const Color kPrimaryGreyColor = Color(0xffADB9C7);
const Color kSecondaryGreyColor = Color(0xff8F9CA9);
const Color kThirdGreyColor = Color(0xffD5DDE5);
const Color kWhiteColor = Color(0xffF7F7F7);
const Color kBackgroundColor = Color(0xffffffff);
const Color kBlueColor = Color(0xff009CC6);
const Color kgreyPageColor = Color(0xfff7f7f7);
const Color kgreenColor = Color(0xff38C976);
const Color kredColor = Color(0xffFE5050);
const Color kTabGreyColor = Color(0xffDDDDDD);
const Color kIndigoColor = Color(0xff5E35B1);
const Color kBrownColor = Color(0xFF6D4C41);
const Color kMetalColor = Color(0xFF727272);

TextStyle blackTextStyleMontserrat = GoogleFonts.montserrat(
  color: kBlackColor,
);
TextStyle orangeTextStyleMontserrat = GoogleFonts.montserrat(
  color: kPrimaryColor,
);
TextStyle greyTextStyleMontserrat = GoogleFonts.montserrat(
  color: kSecondaryGreyColor,
);

TextStyle whiteTextStyleMontserrat = GoogleFonts.montserrat(
  color: kWhiteColor,
);

TextStyle greenTextStyleMontserrat = GoogleFonts.montserrat(
  color: kgreenColor,
);
TextStyle redTextStyleMontserrat = GoogleFonts.montserrat(
  color: kredColor,
);

const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semiBold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;
const FontWeight extraBold = FontWeight.w800;
const FontWeight black = FontWeight.w900;

class MyUtility {
  BuildContext context;

  MyUtility(this.context);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

class SizeConfig {
  double heightSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.height * value;
  }

  double widthSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.width * value;
  }
}
