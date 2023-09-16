import 'package:flutter/material.dart';
import '../data/data.dart';
import '../widgets/widgets.dart';

class IconsGrid extends StatelessWidget {
  final String gridHeading;
  final String? gridSubHeading;
  final List<GridIconModel> gridIcons;
  late final List<Widget> gridViewChildren;
  final bool seeAll;

  IconsGrid(
      {super.key,
      required this.gridHeading,
      required this.gridIcons,
      this.gridSubHeading,
      this.seeAll = false}) {
        gridViewChildren = List.generate(
                    gridIcons.length,
                    (index) => BgLessIcon(
                        imgPath: gridIcons[index].imgPath,
                        imgTxt: gridIcons[index].description));
    if (seeAll) {
      gridViewChildren.add(const SeeAllIcon());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
      child: Container(
        height: 110 * (gridIcons.length / 4).ceilToDouble() + 40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 35, 23, 71),
            borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(gridHeading,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600)),
                if (gridSubHeading != null)
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Colors.grey.shade600, width: 0.5),
                        color: const Color.fromARGB(255, 53, 38, 98),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 7.0),
                        child: Text(gridSubHeading!,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white)),
                      )),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(15),
                crossAxisSpacing: 1.5,
                mainAxisSpacing: 15,
                crossAxisCount: 4,
                children: gridViewChildren),
          )
        ]),
      ),
    );
  }
}

class SeeAllIcon extends StatelessWidget {
  const SeeAllIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
