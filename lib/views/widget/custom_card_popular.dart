part of 'widget.dart';

class CustomCardPopular extends StatelessWidget {
  final int idWisata;
  final String image;
  final String name;
  final String location;
  final String dekripsi;
  final int price;
  final double rating;
  const CustomCardPopular({
    Key? key,
    required this.idWisata,
    required this.image,
    required this.name,
    required this.location,
    required this.dekripsi,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Uint8List convertBase64Image(String base64String) {
      return const Base64Decoder().convert(base64String.split(',').last);
    }

    return GestureDetector(
      onTap: () {
        context.read<RoutesCubit>().emit(RoutesDetailScreen(
              idWisata,
              "https://firebasestorage.googleapis.com/v0/b/smaga-apps.appspot.com/o/image_destination2.png?alt=media&token=34ee2eb1-7f58-4cda-aebc-3c6cfaf97b0c",
              name,
              location,
              dekripsi,
              price,
              rating,
            ));
      },
      child: Container(
        width: 200,
        height: 320,
        margin: const EdgeInsets.only(
          left: defaultMargin,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.grey.shade200,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 200,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Stack(
                children: [
                  SizedBox(
                    width: 180,
                    height: 200,
                    child: Image.memory(
                      convertBase64Image(image),
                      gaplessPlayback: true,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 55,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                        ),
                      ),
                      child: Row(
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
                            padding: const EdgeInsets.only(top: 5, left: 5),
                            child: Text(
                              rating.toString(),
                              style: blackTextStyleMontserrat.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
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
          ],
        ),
      ),
    );
  }
}
