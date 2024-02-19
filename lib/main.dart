import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 494 439',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                          text: 'Transfer',
                          bgColor: Colors.amber,
                          textColor: Colors.black),
                      Button(
                          text: 'Request',
                          bgColor: Colors.black,
                          textColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const WalletBox(walletDatas: [
                    (
                      text1: 'Euro',
                      amount: '6 234',
                      text3: 'EUR',
                      curIcon: Icons.euro_rounded,
                      isInverted: false,
                    ),
                    (
                      text1: 'Dollar',
                      amount: '55 124',
                      text3: 'USD',
                      curIcon: Icons.attach_money_outlined,
                      isInverted: true,
                    ),
                    (
                      text1: 'Bitcoin',
                      amount: '1.2894',
                      text3: 'BTC',
                      curIcon: Icons.currency_bitcoin_outlined,
                      isInverted: false,
                    )
                  ]),
                  /* const Wallet(
                    text1: 'Euro',
                    amount: '6 234',
                    text3: 'EUR',
                    curIcon: Icons.euro_rounded,
                    isInverted: false,
                  ),
                  Transform.translate(
                    offset: const Offset(0, -20),
                    child: const Wallet(
                      text1: 'Dollar',
                      amount: '55 124',
                      text3: 'USD',
                      curIcon: Icons.attach_money_outlined,
                      isInverted: true,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -40),
                    child: const Wallet(
                      text1: 'Bitcoin',
                      amount: '1.2894',
                      text3: 'BTC',
                      curIcon: Icons.currency_bitcoin_outlined,
                      isInverted: false,
                    ),
                  ), */
                ],
              ),
            ),
          )),
    );
  }
}
