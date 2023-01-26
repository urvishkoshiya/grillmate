import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:grillmate/Menu.dart';


class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Map> data = [
    {
      "name": "Pizza",
      "image": "https://www.dominos.co.in/files/items/Peppy_Paneer.jpg",
    },
    {
      "name": "Peppy Paneer",
      "image": "https://www.dominos.co.in/files/items/Peppy_Paneer.jpg",
    },
    {
      "name": "Peppy Paneer",
      "image": "https://www.dominos.co.in/files/items/Peppy_Paneer.jpg",
    },
    {
      "name": "Peppy Paneer",
      "image": "https://www.dominos.co.in/files/items/Peppy_Paneer.jpg",
    },
    {
      "name": "Peppy Paneer",
      "image": "https://www.dominos.co.in/files/items/Peppy_Paneer.jpg",
    },
    {
      "name": "Peppy Paneer",
      "image": "https://www.dominos.co.in/files/items/Peppy_Paneer.jpg",
    },
  ];

  bool like = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner3.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner4.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 220,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 300),
                viewportFraction: 0.9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
