part of 'widget.dart';

class BookingDetailItems extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;
  const BookingDetailItems({
    Key? key,
    required this.title,
    required this.valueText,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            child: const Icon(Icons.check),
          ),
          Text(
            title,
            style: blackTextStyleMontserrat,
          ),
          Spacer(),
          Text(
            valueText,
            style: blackTextStyleMontserrat.copyWith(
              fontWeight: semiBold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
