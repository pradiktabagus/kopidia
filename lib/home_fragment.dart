import 'package:flutter/material.dart';
import 'package:kopidia/detail_screen.dart';
import 'package:kopidia/model/Kopi.dart';

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        final Kopi kopi = KopiList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(kopi: kopi,);
            }));
          },
          child: Container(
            height: 150,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Image.network(kopi.image)
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              kopi.name,
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Text(
                                kopi.deskripsi,
                                style: TextStyle(fontSize: 14.0),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            )
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
          )
        );
      },
      itemCount: KopiList.length,
      ),
    );
  }
}
