import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../data/data.dart';

class InsuranceComponent extends StatelessWidget {
  InsuranceComponent({super.key});

  final List<GridIconModel> gridIcons = [
    GridIconModel(
        imgPath: "assets/logos/bike.png", description: "Bike"),
    GridIconModel(imgPath: "assets/logos/car.png", description: "Car"),
    GridIconModel(imgPath: "assets/logos/health.png", description: "Health"),
    GridIconModel(
        imgPath: "assets/logos/accident.png",
        description: "Accident"),
    GridIconModel(
        imgPath: "assets/logos/term life.png", description: "Term Life"),
    GridIconModel(
        imgPath: "assets/logos/travel.png", description: "Travel"),
    GridIconModel(
        imgPath: "assets/logos/term insuramce.png", description: "Insurance Renewal"),
  ];

  @override
  Widget build(BuildContext context) {
    return IconsGrid(
      gridHeading: "Insurance",
      gridIcons: gridIcons,
      seeAll: true,
    );
  }
}
