part of 'widget.dart';

class CustomTabbarWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  const CustomTabbarWidget({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20, left: 85, right: 85),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kTabGreyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              onTap(0);
            },
            child: Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ((selectedIndex == 0)) ? kWhiteColor : kTabGreyColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'On Going',
                    style: blackTextStyleMontserrat.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              onTap(1);
            },
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ((selectedIndex == 1)) ? kWhiteColor : kTabGreyColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'History',
                    style: blackTextStyleMontserrat.copyWith(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
