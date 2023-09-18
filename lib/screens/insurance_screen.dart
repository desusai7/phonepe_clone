import 'package:flutter/material.dart';
import 'package:phonepe/data/data.dart';
import 'package:phonepe/widgets/widgets.dart';

class InsuranceScreen extends StatelessWidget {
  const InsuranceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(color:const Color.fromARGB(255, 35, 23, 71) , borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 10, 7, 0),
                    child: Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.blue.shade800, borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                      child:Padding(
                        padding: const EdgeInsets.only(left:8.0, top:8.0, right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Vehicle Insurance", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),),
                            const SizedBox(height: 15,),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(color: const Color.fromARGB(255, 35, 23, 71), borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Vehicle Number",
                                  hintStyle:  TextStyle(color: Colors.blueGrey.shade500, fontSize: 12),
                                  suffixIcon:  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: TextButton(onPressed: (){}, style:  TextButton.styleFrom( backgroundColor: const Color.fromARGB(255, 159, 65, 236),), child: const Text("VIEW QUOTES", style:  TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w800),),),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(color: Colors.white, width: 1.0),
                                  )
                                )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  IconsGrid(gridHeading: "Motor and Travel", gridIcons: [
                    GridIconModel(imgPath: "assets/logos/bike.png", description: "Bike"),
                    GridIconModel(imgPath: "assets/logos/car.png", description: "Car"),
                    GridIconModel(
                        imgPath: "assets/logos/travel.png", description: "Travel")
                  ]),
                ],
              ),
            ),
          ),
          IconsGrid(gridHeading: "Health and Life", gridIcons: [
            GridIconModel(
                imgPath: "assets/logos/healthplus.png", description: "Health"),
            GridIconModel(
                imgPath: "assets/logos/top up.png", description: "Super Top-up"),
            GridIconModel(
                imgPath: "assets/logos/term life.png", description: "Term Life")
          ]),
          IconsGrid(gridHeading: "Others", gridIcons: [
            GridIconModel(
                imgPath: "assets/logos/accident.png", description: "Accident"),
            GridIconModel(imgPath: "assets/logos/shop.png", description: "Shop"),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
            child: Text(
              "PhonePe Insurance Broking Services Private Limited. IRDAI Direct Broker (Life and General) Reg. 766 and Broker Registration Code IRDA/DB 822/20 Valid till 10/08/2024.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue.shade100, fontSize: 11),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
            child: Text(
              "Reg.Address - Office 2, Floor 4,5,6,7, Wing A, Block A, Salarpuria SoftZone, Service Road, Green Glen Layout, Bellandur, Bengaluru, Karnataka-KA Pin-5060103",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 112, 92, 170),
                  fontSize: 11,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0, left: 15.0, right: 10.0),
            child: Row(children: [
              Text(
                "CIN: U66000KA2020FTC132814.",
                style: TextStyle(
                    color: Color.fromARGB(255, 112, 92, 170),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Text("TnC, Privacy Policy & Grievance Policy",
                  style: TextStyle(
                      color: Color.fromARGB(255, 203, 40, 232),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center),
            ]),
          )
        ],
      ),
    );
  }
}
