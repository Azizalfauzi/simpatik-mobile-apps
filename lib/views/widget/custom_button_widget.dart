part of 'widget.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(kPrimaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide.none,
            ),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyleMontserrat.copyWith(
            fontWeight: medium,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
