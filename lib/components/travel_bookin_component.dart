import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../data/data.dart';

class TravelBookingComponent extends StatelessWidget {
  TravelBookingComponent({super.key});

final List<GridIconModel> gridIcons = [
    GridIconModel(
        imgPath: "assets/logos/aeroplane.png", description: "Flights"),
    GridIconModel(imgPath: "assets/logos/BUS.png", description: "Bus"),
    GridIconModel(imgPath: "assets/logos/train.png", description: "Trains"),
    GridIconModel(
        imgPath: "assets/logos/accident.png",
        description: "Hotels"),
  ];

  @override
  Widget build(BuildContext context) {
    return IconsGrid(
      gridHeading: "Travel Bookings",
      gridIcons: gridIcons,
    );
  }
}