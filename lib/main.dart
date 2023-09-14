import 'package:flutter/material.dart';
import 'components/components.dart';
import 'data/data.dart';

void main() {
  runApp(const MyApp());
}

List<BottomNavBarIconModel> bottomNavBarIcons = [
  BottomNavBarIconModel(icon: Icons.home_outlined, title: "Home"),
  BottomNavBarIconModel(icon: Icons.shopping_bag_outlined, title: "Stores"),
  BottomNavBarIconModel(icon: Icons.security_outlined, title: "Insurance"),
  BottomNavBarIconModel(icon: Icons.attach_money_outlined, title: "Wealth"),
  BottomNavBarIconModel(icon: Icons.compare_arrows_outlined, title: "History"),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // primaryColor: const Color.fromARGB(255, 139, 15, 235),
        scaffoldBackgroundColor: const Color.fromARGB(26, 55, 4, 99),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
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
              padding: const EdgeInsets.only(right: 15),
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

        body: const SingleChildScrollView(
          child: Column(children: [
            MoneyTransfersComponent(),
            MyQRComponent(),
            WalletComponent(),
            UPILiteComponent(),
            RechargeAndBillsComponent(),
          ]),
        ),
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
