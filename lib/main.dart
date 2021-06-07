import 'package:flutter/material.dart';
import 'package:kopidia/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return MaterialApp(
              home: SplashScreen(),
            );
          }else {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: Scaffold(
                body: Center(
                  child: Text("Kopidia"),
                ),
              ),
            );
          }
        }
    );
  }
}
