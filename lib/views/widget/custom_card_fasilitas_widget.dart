part of 'widget.dart';

class CustomCardFasilitas extends StatelessWidget {
  const CustomCardFasilitas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
    );
  }
}
