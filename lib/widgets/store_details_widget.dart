import 'package:flutter/material.dart';
import '../data/data.dart';

class StoreDetailsWidget extends StatelessWidget {
  final StoreDetailsModel storeDetailsModel;
  const StoreDetailsWidget({super.key, required this.storeDetailsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 2, 6, 6),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 35, 23, 71),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Last Paid ₹ ${storeDetailsModel.lastTransactionAmount.toString()}, ${storeDetailsModel.lastTransactionDate}",
              style: const TextStyle(color: Colors.white60, fontSize: 11),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: storeDetailsModel.storeIconColor ??
                              const Color.fromARGB(255, 101, 162, 197),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        storeDetailsModel.storeIcon ?? Icons.shopify_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(storeDetailsModel.storeName,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "⭐ ${storeDetailsModel.storeRating}  ·  ${storeDetailsModel.storeDistance}",
                          style: const TextStyle(
                              color: Colors.white60, fontSize: 11),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 12,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 20),
              child: Container(
                height: 32,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade800, width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "↗  Pay now",
                  style: TextStyle(
                      color: Color.fromARGB(255, 134, 10, 235),
                      fontSize: 11,
                      fontWeight: FontWeight.w300),
                )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
