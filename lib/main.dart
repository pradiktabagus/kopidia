import 'package:flutter/material.dart';
import 'package:kopidia/home_fragment.dart';
import 'package:kopidia/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(
              home: SplashScreen(),
            );
          } else {
            return MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: Container());
          }
        });
  }
}

class Container extends StatefulWidget {
  const Container({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Container();
}

class _Container extends State<Container> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOption = <Widget>[
    Scaffold(
      body: HomeFragment(),
    ),
    Text(
      'Index 2: Mail',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kopidia'),
      ),
      body: Center(child: _widgetOption.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline), label: 'Mail')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue.shade400,
        onTap: _onItemTapped,
      ),
    );
  }
}
