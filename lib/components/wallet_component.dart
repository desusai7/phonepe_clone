import 'package:flutter/material.dart';

class WalletComponent extends StatelessWidget {
  const WalletComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(5, 8, 5, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          WalletIcon(
            imgPath: "assets/logos/phone_pe_wallet-1-removebg-preview.png",
            textMsg: "PhonePe Wallet",
          ),
          WalletIcon(
            imgPath: "assets/logos/reward-removebg-preview.png",
            textMsg: "Rewards",
          ),
          WalletIcon(
            imgPath: "assets/logos/refer1-removebg-preview.png",
            textMsg: "Refer & Earn",
          ),
        ],
      ),
    );
  }
}

class WalletIcon extends StatelessWidget {
  final String imgPath;
  final String textMsg;
  const WalletIcon({
    super.key,
    required this.imgPath,
    required this.textMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blue.shade900,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(iconData, color: Colors.white, size: 28),
            Padding( padding: const EdgeInsets.only(top:2.0), child: Image.asset(imgPath, height: 35, width: 35, fit: BoxFit.cover,)),
            const SizedBox(
              height: 3,
            ),
            Text(textMsg,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
          ],
        ));
  }
}
