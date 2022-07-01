part of 'widget.dart';

class CustomCardFasilitas extends StatelessWidget {
  final String img;
  final String title;
  const CustomCardFasilitas({
    Key? key,
    this.img = '',
    this.title = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10,
            ),
            border: Border.all(color: kPrimaryColor),
            image: DecorationImage(
              image: AssetImage(img),
            ),
          ),
        ),
        Text(
          title,
          style: blackTextStyleMontserrat,
        ),
      ],
    );
  }
}
