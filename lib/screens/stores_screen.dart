import 'package:flutter/material.dart';
import 'package:phonepe/widgets/icons_grid.dart';
import '../widgets/widgets.dart';
import '../data/data.dart';

class StoresScreen extends StatelessWidget {
  StoresScreen({super.key});

  final List<GridIconModel> gridIcons = [
    GridIconModel(
        imgPath: "assets/logos/reacharge1.png", description: "Mobile Recharge"),
    GridIconModel(imgPath: "assets/logos/dth.png", description: "DTH"),
    GridIconModel(imgPath: "assets/logos/bulb.png", description: "Electricity"),
    GridIconModel(
        imgPath: "assets/logos/card.png",
        description: "Credit Card Bill Payment"),
    GridIconModel(
        imgPath: "assets/logos/rent.png", description: "Rent Payment"),
    GridIconModel(
        imgPath: "assets/logos/loan.png", description: "Loan Repayment"),
    GridIconModel(
        imgPath: "assets/logos/cylinder.png", description: "Book a Cylinder"),
  ];

  @override
  Widget build(BuildContext context) {
    return IconsGrid(
      gridHeading: "Recharge & Pay Bills",
      gridIcons: gridIcons,
      gridSubHeading: "My Bills",
      seeAll: true,
    );
  }
}
