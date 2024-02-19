import 'package:flutter/material.dart';

typedef WalletData = ({
  String text1,
  String amount,
  String text3,
  IconData curIcon,
  bool isInverted
});

class WalletBox extends StatelessWidget {
  final List<WalletData> walletDatas;

  const WalletBox({super.key, required this.walletDatas});

  @override
  Widget build(BuildContext context) {
    double index = 0;
    return Column(
      children: [
        ...walletDatas.map((element) {
          // int idx = element.hashCode;
          double offsetY = -20 * index++;
          // double offsetY = -20;
          return Transform.translate(
            offset: Offset(0, offsetY),
            child: Wallet(
              text1: element.text1,
              amount: element.amount,
              text3: element.text3,
              curIcon: element.curIcon,
              isInverted: element.isInverted,
            ),
          );
        })
      ],
    );
  }
}

class Wallet extends StatelessWidget {
  final String text1;
  final String amount;
  final String text3;

  final bool isInverted;

  final IconData curIcon;

  const Wallet({
    super.key,
    required this.text1,
    required this.amount,
    required this.text3,
    required this.curIcon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : Colors.black,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    color: isInverted ? Colors.black : Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      text3,
                      style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 15),
                child: Icon(
                  curIcon,
                  color: isInverted ? Colors.black : Colors.white,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
