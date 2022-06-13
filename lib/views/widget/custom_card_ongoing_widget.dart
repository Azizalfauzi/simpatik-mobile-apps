part of 'widget.dart';

class CustomCardOnGoing extends StatelessWidget {
  final int id;
  final String title;
  final String location;
  final String image;
  final int star;
  const CustomCardOnGoing({
    Key? key,
    required this.id,
    required this.title,
    required this.location,
    required this.image,
    required this.star,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: EdgeInsets.only(
        bottom: (id / 4 == 1) ? 100 : 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
    );
  }
}
