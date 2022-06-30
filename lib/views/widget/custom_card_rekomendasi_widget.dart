part of 'widget.dart';

class CustomCardRekomendasi extends StatelessWidget {
  final String name;
  final String location;
  final String image;
  final String dekripsi;
  final int price;
  final double rating;
  const CustomCardRekomendasi({
    Key? key,
    required this.name,
    required this.location,
    required this.image,
    required this.dekripsi,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.read<RoutesCubit>().emit(RoutesDetailScreen(
        //       image,
        //       name,
        //       location,
        //       dekripsi,
        //       price,
        //       rating,
        //     ));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16, bottom: defaultMargin),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/smaga-apps.appspot.com/o/image_destination2.png?alt=media&token=34ee2eb1-7f58-4cda-aebc-3c6cfaf97b0c"),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyleMontserrat.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    location,
                    style: greyTextStyleMontserrat.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: const EdgeInsets.only(right: 2),
                  child: const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 5),
                  child: Text(
                    rating.toString(),
                    style: blackTextStyleMontserrat.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
