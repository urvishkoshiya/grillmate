import 'package:flutter/material.dart';

class Cold_drinks extends StatefulWidget {

  @override
  State<Cold_drinks> createState() => _Cold_drinksState();
}

class _Cold_drinksState extends State<Cold_drinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cold Drinks",style: TextStyle(fontFamily: "Custom"),),
      ),
    );
  }
}
