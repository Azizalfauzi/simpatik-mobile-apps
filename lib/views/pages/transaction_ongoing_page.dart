part of 'pages.dart';

class TransactionOngoingPage extends StatefulWidget {
  const TransactionOngoingPage({Key? key}) : super(key: key);

  @override
  State<TransactionOngoingPage> createState() => _TransactionOngoingPageState();
}

class _TransactionOngoingPageState extends State<TransactionOngoingPage> {
  Widget contentOnGoingTransaction() {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Column(
        children: [
          SizedBox(
            height: 700,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: mockOnGoing
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.fromLTRB(
                            defaultMargin - 10,
                            5,
                            defaultMargin - 10,
                            5,
                          ),
                          child: CustomCardOnGoing(
                            id: e.id,
                            title: e.name,
                            location: e.location,
                            image: e.image,
                            star: e.star,
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            contentOnGoingTransaction(),
          ],
        ),
      ),
    );
  }
}
