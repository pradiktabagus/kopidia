import 'package:flutter/material.dart';
import 'package:kopidia/model/Kopi.dart';

class DetailScreen extends StatelessWidget {
  final Kopi kopi;
  DetailScreen({required this.kopi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(kopi.image),
                SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Container(
              child: Text(
                kopi.deskripsi
              ),
            )
          ],
        ),
      ),
    );
  }
}