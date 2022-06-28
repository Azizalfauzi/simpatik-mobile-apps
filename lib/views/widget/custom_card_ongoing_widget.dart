part of 'widget.dart';

class CustomCardOnGoing extends StatelessWidget {
  final int id;
  final String name;
  final String location;
  final String image;
  final int rate;
  const CustomCardOnGoing({
    Key? key,
    required this.id,
    required this.name,
    required this.location,
    required this.image,
    required this.rate,
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
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image)),
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
                    rate.toString(),
                    style: blackTextStyleMontserrat.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // NOTE: BOOKING DETAILS TEXT
          Container(
            margin:const EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style: blackTextStyleMontserrat.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),

          // // NOTE: BOOKING DETAILS ITEMS
          // BookingDetailItems(
          //   title: 'Traveler',
          //   valueText: '${transaction.amountOfTraveler} person',
          //   valueColor: kBlackColor,
          // ),
          // BookingDetailItems(
          //   title: 'Seat',
          //   valueText: transaction.selectedSeats,
          //   valueColor: kBlackColor,
          // ),
          // BookingDetailItems(
          //   title: 'Insurance',
          //   valueText: transaction.insurance ? 'YES' : 'NO',
          //   valueColor: transaction.insurance ? kGreenColor : kRedColor,
          // ),
          // BookingDetailItems(
          //   title: 'Refundable',
          //   valueText: transaction.refundable ? 'YES' : 'NO',
          //   valueColor: transaction.refundable ? kGreenColor : kRedColor,
          // ),

          // BookingDetailItems(
          //   title: 'VAT',
          //   valueText: '${(transaction.vat * 100).toStringAsFixed(0)}%',
          //   valueColor: kBlackColor,
          // ),

          // BookingDetailItems(
          //   title: 'Price',
          //   valueText: NumberFormat.currency(
          //     locale: 'id',
          //     symbol: 'IDR ',
          //     decimalDigits: 0,
          //   ).format(transaction.price),
          //   valueColor: kBlackColor,
          // ),

          // BookingDetailItems(
          //   title: 'Grand Total',
          //   valueText: NumberFormat.currency(
          //     locale: 'id',
          //     symbol: 'IDR ',
          //     decimalDigits: 0,
          //   ).format(transaction.grandTotal),
          //   valueColor: kPrimaryColor,
          // ),
        ],
      ),
    );
  }
}
//  margin: EdgeInsets.only(
//         bottom: (id / 4 == 1) ? 100 : 5,
//       ),