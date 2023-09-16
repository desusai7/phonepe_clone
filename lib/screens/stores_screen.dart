import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/widgets.dart';
import '../data/data.dart';

class StoresScreen extends StatelessWidget {
  StoresScreen({super.key});

  final List<StoreDetailsModel> storesList = [
    StoreDetailsModel(
        storeName: "Burger King",
        storeRating: "4.3",
        storeDistance: "1.2 KM",
        lastTransactionDate: "2 days ago",
        lastTransactionAmount: 360),
    StoreDetailsModel(
        storeName: "KFC",
        storeRating: "4.1",
        storeDistance: "1.5 KM",
        storeIcon: Icons.food_bank_outlined,
        storeIconColor: Colors.red,
        lastTransactionDate: "3 days ago",
        lastTransactionAmount: 450),
    StoreDetailsModel(
        storeName: "McDonald's",
        storeRating: "4.5",
        storeDistance: "1.8 KM",
        storeIcon: Icons.breakfast_dining_outlined,
        storeIconColor: Colors.green.shade400,
        lastTransactionDate: "4 days ago",
        lastTransactionAmount: 250),
    StoreDetailsModel(
        storeName: "Pizza Hut",
        storeRating: "4.2",
        storeIconColor: Colors.yellow.shade700,
        storeIcon: Icons.local_pizza_outlined,
        storeDistance: "2.1 KM",
        lastTransactionDate: "5 days ago",
        lastTransactionAmount: 150),
    StoreDetailsModel(
        storeName: "Biryani House",
        storeRating: "4.9",
        storeIcon: Icons.rice_bowl_outlined,
        storeIconColor: Colors.red.shade300,
        storeDistance: "13.6 KM",
        lastTransactionDate: "5 Months ago",
        lastTransactionAmount: 1596),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/hp-banner4.png",
                  fit: BoxFit.cover,
                  height: 150,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(color: const Color.fromARGB(255, 35, 23, 71), borderRadius: BorderRadius.circular(40)),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Search by Store name or phone number",
                    hintStyle: const TextStyle(color: Colors.white60, fontSize: 13),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none
                        )),
              ),
            ),
          ),
          ...List.generate(storesList.length, (index) {
            return StoreDetailsWidget(storeDetailsModel: storesList[index]);
          }),
        ],
      ),
    );
  }
}
