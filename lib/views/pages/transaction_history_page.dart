part of 'pages.dart';

class TransactionHistoryPage extends StatefulWidget {
  const TransactionHistoryPage({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryPage> createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  Widget contentHistoryTransaction() {
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
                          child: CustomCardHistory(
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
            contentHistoryTransaction(),
          ],
        ),
      ),
    );
  }
}
