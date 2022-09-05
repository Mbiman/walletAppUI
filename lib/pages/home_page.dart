import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/utils/my_button.dart';
import 'package:walletappui/utils/my_card.dart';
import 'package:walletappui/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //appBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontFamily: 'Ubuntu',
                        ),
                      ),
                    ],
                  ),

                  //plus button
                  Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add)),
                ],
              ),
            ),
            const SizedBox(height: 25.0),

            //cards
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                      balance: 4250.45,
                      cardNumber: 5678,
                      expiryMonth: 10,
                      expiryYear: 23,
                      color: Colors.deepPurple[300]),
                  const MyCard(
                      balance: 1075.25,
                      cardNumber: 1234,
                      expiryMonth: 10,
                      expiryYear: 24,
                      color: Colors.blue),
                  const MyCard(
                      balance: 5250.20,
                      cardNumber: 8788,
                      expiryMonth: 11,
                      expiryYear: 25,
                      color: Colors.green),
                ],
              ),
            ),

            const SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),

            const SizedBox(height: 25),

            //3 buttons (send, pay, bills)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButton(cardImage: 'lib/icons/send.png', cardText: 'Send'),
                  MyButton(
                      cardImage: 'lib/icons/credit-card.png', cardText: 'Pay'),
                  MyButton(cardImage: 'lib/icons/bill.png', cardText: 'Bills'),
                ],
              ),
            ),

            //column (stats, transactions)
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: const [
                  //statistics
                  MyListTile(
                      imagePath: 'lib/icons/statistics.png',
                      details: 'Payments and Income',
                      title: 'Statistics'),

                  SizedBox(height: 15),

                  //transactions
                  MyListTile(
                      imagePath: 'lib/icons/transaction.png',
                      details: "Transaction history",
                      title: 'Transactions'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
