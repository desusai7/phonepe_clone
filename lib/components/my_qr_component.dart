import 'package:flutter/material.dart';

class MyQRComponent extends StatelessWidget {
  const MyQRComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(5, 8, 5, 0),
        child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 35, 23, 71),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.qr_code_scanner_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "My QR",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      VerticalDivider(
                        color: Colors.grey.shade800,
                        indent: 12,
                        endIndent: 12,
                        width: 20,
                      ),
                      const Text("UPI ID: 8919969991@ybl",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blueGrey,
                        size: 15,
                      ))
                ],
              ),
            )));
  }
}
