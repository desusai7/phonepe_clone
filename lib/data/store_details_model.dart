import 'package:flutter/material.dart';

class StoreDetailsModel {
  final String storeName;
  final String storeRating;
  final String storeDistance;
  final String lastTransactionDate;
  final int lastTransactionAmount;
  final IconData? storeIcon;
  final Color? storeIconColor;

  StoreDetailsModel(
      {this.storeIcon,
      this.storeIconColor,
      required this.storeName,
      required this.storeRating,
      required this.storeDistance,
      required this.lastTransactionDate,
      required this.lastTransactionAmount});
}
