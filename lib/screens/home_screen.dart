import 'package:flutter/material.dart';
import '../components/components.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey sliderKey;
  const HomeScreen({super.key, required this.sliderKey});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SlidingImageCarousel(
            sliderKey: sliderKey,
            imgPaths: List.generate(
                5, (index) => "assets/images/hp-banner${index + 1}.png")),
        const MoneyTransfersComponent(),
        const MyQRComponent(),
        const WalletComponent(),
        const UPILiteComponent(),
        const SizedBox(height: 7),
        RechargeAndBillsComponent(),
        InsuranceComponent(),
        TravelBookingComponent(),
        DonationsComponent()
      ]),
    );
  }
}
