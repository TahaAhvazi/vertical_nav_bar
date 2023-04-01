import 'package:example/vertical_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentRoute = 0;
  @override
  Widget build(BuildContext context) {
    List myRoutes = [
      SizedBox(
        width: MediaQuery.of(context).size.width * 75 / 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "PAGE 1",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 75 / 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "PAGE 2",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 75 / 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "PAGE 3",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 75 / 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "PAGE 4",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                VerticalNavBar(
                  selectedIndex: currentRoute,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 25 / 100,
                  onItemSelected: (value) {
                    setState(() {
                      _navigateRoutes(value);
                    });
                  },
                  items: const [
                    VerticalNavBarItem(
                      title: "H O M E",
                    ),
                    VerticalNavBarItem(
                      title: "S E T T I N G S",
                    ),
                    VerticalNavBarItem(
                      title: "P R O F I L E",
                    ),
                    VerticalNavBarItem(
                      title: " S E A R C H",
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[myRoutes[currentRoute]],
            ),
          ],
        ),
      ),
    );
  }

  void _navigateRoutes(int selectedIndex) {
    setState(() {
      currentRoute = selectedIndex;
    });
  }
}
