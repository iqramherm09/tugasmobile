

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/detail_populer.dart';
import 'package:flutter_application_1/detail_rekomendasi.dart';

// ignore: use_key_in_widget_constructors
class hometoko extends StatelessWidget {
  List<Map<String, dynamic>> data = [
    {"Title": "Kaos Pria", "image": Image.asset("assets/images/logo1.png")},
    {"Title": "Kemeja Pria", "image": Image.asset("assets/images/logo2.png")},
    {"Title": "Celana Pria", "image": Image.asset("assets/images/logo3.png")},
    {"Title": "Jaket Pria", "image": Image.asset("assets/images/logo4.png")},
    {"Title": "Baju Wanita", "image": Image.asset("assets/images/logo5.png")},
    {"Title": "Rok Wanita", "image": Image.asset("assets/images/logo6.png")},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/toko.png"),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "Cari Sekarang . . .",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintStyle: TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                prefixIcon: Icon(
                  Icons.search,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kategori",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View all",
                      style: TextStyle(color: Colors.green, fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1))
                            ]),
                        child: IconButton(
                            iconSize: 35,
                            onPressed: () {},
                            icon: data[index]["image"]),
                      ),
                      SizedBox(height: 5),
                      InkWell(
                          onTap: () {},
                          child: Text(data[index]["Title"].toString(),
                              style: TextStyle(fontSize: 10))),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Text("Populer",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final populer place = tourismPlaceList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(place: place);
                      }));
                    },
                    child: Card(
                      child: Container(
                        height: 227,
                        width: 158,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(place.imageAsset),
                              SizedBox(height: 5),
                              Text(
                                place.name,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                place.harga,
                                style:
                                    TextStyle(color: Colors.red, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: tourismPlaceList.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Text("Rekomendasi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final rekomendasi place = rekomendasiList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return rekomendasiScreen(place: place);
                      }));
                    },
                    child: Card(
                      child: Container(
                        height: 227,
                        width: 158,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(1, 1)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(place.imageAsset),
                              SizedBox(height: 5),
                              Text(
                                place.name,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                place.harga,
                                style:
                                    TextStyle(color: Colors.red, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: rekomendasiList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
