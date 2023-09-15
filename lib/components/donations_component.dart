import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../data/data.dart';

class DonationsComponent extends StatelessWidget {
  DonationsComponent({super.key});

  final List<GridIconModel> gridIcons = [
    GridIconModel(
        imgPath: "assets/logos/donate-meal.png", description: "Donate Meals"),
    GridIconModel(imgPath: "assets/logos/gitrl child.png", description: "Girl Child Education"),
    GridIconModel(imgPath: "assets/logos/plant.png", description: "Help Specially Abled"),
  ];

  @override
  Widget build(BuildContext context) {
    return IconsGrid(
      gridHeading: "Donations",
      gridIcons: gridIcons,
      seeAll: true,
    );
  }
}