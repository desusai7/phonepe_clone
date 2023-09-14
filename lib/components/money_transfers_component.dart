import 'package:flutter/material.dart';
import '../widgets/money_transfers_icon.dart';

class MoneyTransfersComponent extends StatelessWidget {
  const MoneyTransfersComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 8, 5, 0),
      child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 35, 23, 71),
              borderRadius: BorderRadius.circular(10)),
          child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    "Money Transfers",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MoneyTransfersIcon(
                        imgPath:"assets/logos/To_Mobile_Number-removebg-preview.png", textMsg: "To Mobile Number"),
                    MoneyTransfersIcon(
                        imgPath:"assets/logos/to_account-removebg-preview.png", textMsg: "To Bank/UPI ID"),
                    MoneyTransfersIcon(
                        imgPath:"assets/logos/TO_SELF-removebg-preview.png",
                        textMsg: "To Self Account"),
                    MoneyTransfersIcon(
                        imgPath:"assets/logos/check_balance-removebg-preview.png",
                        textMsg: "Check Balance"),
                  ],
                )
              ])),
    );
  }
}
