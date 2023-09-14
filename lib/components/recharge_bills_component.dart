import 'package:flutter/material.dart';

class RechargeAndBillsComponent extends StatelessWidget {
  const RechargeAndBillsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 8, 5, 0),
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 35, 23, 71),
            borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 12, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Recharge & Pay Bills",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600)),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.grey.shade600, width: 0.5),
                      color: const Color.fromARGB(255, 53, 38, 98),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 1.0, horizontal: 7.0),
                      child: Text("My Bills",
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    )),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             BgLessIcon(
              imgPath: "assets/logos/reacharge1.png",
              imgTxt: "Mobile Recharge",
            ),
            BgLessIcon(
              imgPath: "assets/logos/dth.png",
              imgTxt: "DTH",
            ), 
            BgLessIcon(
              imgPath: "assets/logos/bulb.png",
              imgTxt: "Electricity",
            ), 
            BgLessIcon(
              imgPath: "assets/logos/card.png",
              imgTxt: "Credit Card Bill Payment",
            ),    ]),
          ),
           Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             const BgLessIcon(
              imgPath: "assets/logos/rent.png",
              imgTxt: "Rent Payment",
            ),
            const BgLessIcon(
              imgPath: "assets/logos/loan.png",
              imgTxt: "Loan Repayment",
            ), 
            const BgLessIcon(
              imgPath: "assets/logos/cylinder.png",
              imgTxt: "Book a Cylinder",
            ), 
              Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey.shade600,
                width: 1,
              )),
              
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 22,
            color: Colors.grey.shade300,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          width: 60,
          child: Text(
            "See All",
            style: TextStyle(color: Colors.white, fontSize: 12),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    )
                ]),
          ) 
        ]),
      ),
    );
  }
}

class BgLessIcon extends StatelessWidget {
  final String imgPath;
  final String imgTxt;
  const BgLessIcon({
    super.key,
    required this.imgPath,
    required this.imgTxt,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 90,
        width: 70,
        child: Column(
          children: [
            Image.asset(
              imgPath,
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 3,),
            Text(
              imgTxt,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}
