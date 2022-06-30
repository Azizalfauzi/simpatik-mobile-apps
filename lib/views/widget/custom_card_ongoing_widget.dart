part of 'widget.dart';

class CustomCardOnGoing extends StatelessWidget {
  final int id;
  final String name;
  final String location;
  final String image;
  final int rate;
  final int statusTranasksi;
  const CustomCardOnGoing({
    Key? key,
    required this.id,
    required this.name,
    required this.location,
    required this.image,
    required this.rate,
    required this.statusTranasksi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NOTE: DESTINATION TILE
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(width: 1, color: kPrimaryColor),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/ic_shopping.png"),
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
                      style: blackTextStyleMontserrat.copyWith(
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
                  Text(
                    "Transfer",
                    style: blackTextStyleMontserrat.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // NOTE: BOOKING DETAILS TEXT
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  'Booking Details',
                  style: blackTextStyleMontserrat.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  (statusTranasksi == 1) ? "Belum lunas" : "Lunas",
                  style: (statusTranasksi == 1)
                      ? orangeTextStyleMontserrat
                      : blackTextStyleMontserrat.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//  margin: EdgeInsets.only(
//         bottom: (id / 4 == 1) ? 100 : 5,
//       ),