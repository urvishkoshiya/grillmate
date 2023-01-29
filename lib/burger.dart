import 'package:flutter/material.dart';

class Burger extends StatefulWidget {

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burger",style: TextStyle(fontFamily: "Custom"),),
      ),
    );
  }
}
