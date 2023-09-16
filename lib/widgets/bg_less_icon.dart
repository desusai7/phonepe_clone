import 'package:flutter/material.dart';

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
        height: 60,
        width: 60,
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
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ],
        ));
  }
}
