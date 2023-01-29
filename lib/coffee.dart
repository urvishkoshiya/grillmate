import 'package:flutter/material.dart';

class Coffee extends StatefulWidget {

  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffee",style: TextStyle(fontFamily: "Custom"),),
      ),
    );
  }
}
