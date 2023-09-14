import 'package:flutter/material.dart';

class MoneyTransfersIcon extends StatelessWidget {
  final String textMsg;
  final String imgPath;
  const MoneyTransfersIcon({
    super.key,
    required this.imgPath,
    required this.textMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey.shade600,
                width: 1,
              )),
              child: Image.asset(imgPath)
          // child: Icon(
          //   icon,
          //   size: 35,
          //   color: Colors.grey.shade300,
          // ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 60,
          child: Text(
            textMsg,
            style: const TextStyle(color: Colors.white, fontSize: 12),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
