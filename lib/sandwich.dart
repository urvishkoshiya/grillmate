import 'package:flutter/material.dart';

class Sandwich extends StatefulWidget {

  @override
  State<Sandwich> createState() => _SandwichState();
}

class _SandwichState extends State<Sandwich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sandwich",style: TextStyle(fontFamily: "Custom"),),
      ),
    );
  }
}
