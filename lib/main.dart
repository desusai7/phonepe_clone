import 'package:flutter/material.dart';
import 'data/data.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phonepe UI Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(26, 55, 4, 99),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

List<BottomNavBarIconModel> bottomNavBarIcons = [
  BottomNavBarIconModel(icon: Icons.home_outlined, title: "Home"),
  BottomNavBarIconModel(icon: Icons.shopping_bag_outlined, title: "Stores"),
  BottomNavBarIconModel(icon: Icons.security_outlined, title: "Insurance"),
  BottomNavBarIconModel(icon: Icons.attach_money_outlined, title: "Wealth"),
  BottomNavBarIconModel(icon: Icons.compare_arrows_outlined, title: "History"),
];

final GlobalKey _sliderKey = GlobalKey();

List navScreens = [
  HomeScreen(
    sliderKey: _sliderKey,
  ),
  StoresScreen(),
  const InsuranceScreen(),
  const WealthScreen(),
  const HistoryScreen(),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onSelectedIndexChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 250,
          backgroundColor: const Color.fromARGB(255, 74, 3, 132),
          leading: Row(mainAxisSize: MainAxisSize.min, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey.shade600,
                      width: 1,
                    )),
                child: const Icon(
                  Icons.person_outline,
                  size: 25,
                  color: Color.fromARGB(255, 94, 12, 156),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(children: [
                  Text(
                    "Add Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.white,
                    size: 25,
                  ),
                ]),
                Text(
                  "BHEL MIG Phase 2 Colony",
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ]),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Row(children: [
                Icon(
                  Icons.qr_code_scanner_outlined,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.help_outline_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ]),
            ),
          ],
        ),
        body: navScreens[_selectedIndex],
        bottomNavigationBar: Container(
            height: 60,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 74, 3, 132)),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  5,
                  (index) => BottomNavBarIcon(
                    index: index,
                    iconData: bottomNavBarIcons[index].icon,
                    iconLabel: bottomNavBarIcons[index].title,
                    isActive: index == _selectedIndex,
                    onTap: _onSelectedIndexChange,
                  ),
                ),
              ),
            )));
  }
}

class BottomNavBarIcon extends StatelessWidget {
  final IconData iconData;
  final String iconLabel;
  final bool isActive;
  final Function(int) onTap;
  final int index;
  const BottomNavBarIcon({
    super.key,
    required this.iconData,
    required this.iconLabel,
    this.isActive = false,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: SizedBox(
        height: 50,
        width: 70,
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: isActive
                        ? Colors.white
                        : const Color.fromARGB(255, 97, 33, 153)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    iconData,
                    color: isActive ? Colors.deepPurple : Colors.white38,
                    size: 20,
                  ),
                )),
            Text(
              iconLabel,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: isActive ? 12 : 10,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
