// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:merowall8/utils/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(children: [
          //appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      'My',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' Cards',
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),
                //plus button
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add))
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          //cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                // ignore: prefer_const_constructors
                MyCard(
                  balance: 5250.34,
                  cardNumber: 4424,
                  expiryMonth: 10,
                  expiryYear: 22,
                  color: Colors.teal,
                ),
                const MyCard(
                  balance: 6969.34,
                  cardNumber: 12345,
                  expiryMonth: 7,
                  expiryYear: 24,
                  color: Color.fromARGB(255, 110, 168, 62),
                ),
                const MyCard(
                  balance: 7450.34,
                  cardNumber: 8824,
                  expiryMonth: 10,
                  expiryYear: 28,
                  color: Color.fromARGB(255, 206, 133, 77),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const WormEffect(
              dotHeight: 16,
              dotWidth: 16,
              type: WormType.thinUnderground,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //3buttons ->send + pay + bills
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //send
              Column(
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(21),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 150, 149, 149),
                          blurRadius: 20,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset('lib/icons/send.png'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Send",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]),
                  ),
                ],
              ),

              //pay
              Column(
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(21),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 150, 149, 149),
                          blurRadius: 20,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset('lib/icons/pay.png'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Pay",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]),
                  ),
                ],
              ),
              //bills
              Column(
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(21),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 150, 149, 149),
                          blurRadius: 20,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset('lib/icons/bill.png'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Bills",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          )
          //column-> sts+ transac
        ]),
      ),
    );
  }
}
