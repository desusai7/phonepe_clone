import 'package:flutter/material.dart';

class UPILiteComponent extends StatelessWidget {
  const UPILiteComponent({super.key});

@override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/upilite-logo.png", height: 35, width: 75),
                      VerticalDivider(
                        color: Colors.grey.shade800,
                        indent: 12,
                        endIndent: 12,
                        width: 20,
                      ),
                      const Text("PIN-less Payments",
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
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
