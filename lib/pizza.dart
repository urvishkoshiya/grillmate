import 'package:flutter/material.dart';

class Pizza extends StatefulWidget {
  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  // List<Map> pizza = [
  //   {
  //     'name': 'Peppy Paneer',
  //     'image': 'https://www.dominos.co.in/files/items/Peppy_Paneer.jpg',
  //     'des':
  //         'Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful!',
  //   },
  //   {
  //     'name': 'Mexican Green Wave',
  //     'image': 'https://www.dominos.co.in/files/items/Mexican_Green_Wave.jpg',
  //     'des':
  //         'A pizza loaded with crunchy onions, crisp capsicum, juicy tomatoes and jalapeno with a liberal sprinkling of exotic Mexican herbs',
  //   },
  //   {
  //     'name': 'Deluxe Veggie',
  //     'image': 'https://www.dominos.co.in/files/items/Deluxe_Veggie.jpg',
  //     'des':
  //         'For a vegetarian looking for a BIG treat that goes easy on the spices, this one got it all.. The onions, the capsicum, those delectable mushrooms - with paneer and golden corn to top it all.',
  //   },
  //   {
  //     'name': 'Indian Tandoori Panner',
  //     'image': 'https://www.dominos.co.in/files/items/IndianTandooriPaneer.jpg',
  //     'des':
  //         'It is hot. It is spicy. It is oh-so-Indian. Tandoori paneer with capsicum I red paprika I mint mayo.',
  //   },
  //   {
  //     'name': 'Paneer Makhani',
  //     'image': 'https://www.dominos.co.in/files/items/Paneer_Makhni.jpg',
  //     'des': 'Paneer and Capsicum on Makhani Sauce',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:Text(
          "Pizza",
          style: TextStyle(fontFamily: "Custom"),
        ),
      ),
      body: Center(),
    );
  }
}
