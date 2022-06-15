part of 'widget.dart';

class CustomCardRekomendasi extends StatelessWidget {
  final int id;
  final String title;
  final String location;
  final String image;
  final int star;
  const CustomCardRekomendasi({
    Key? key,
    required this.id,
    required this.title,
    required this.location,
    required this.image,
    required this.star,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: double.infinity,
    //   height: 120,
    //   margin: EdgeInsets.only(
    //     bottom: (id / 4 == 1) ? 100 : 5,
    //   ),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(20),
    //     color: Colors.grey,
    //   ),
    // );
    return GestureDetector(
      onTap: () {
        context.read<RoutesCubit>().emit(RoutesDetailScreen());
      },
      child: Container(
        margin: EdgeInsets.only(top: 16, bottom: (id / 4 == 1) ? 100 : 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
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
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
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
                Text(
                  star.toString(),
                  style: blackTextStyleMontserrat.copyWith(
                    fontWeight: medium,
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
