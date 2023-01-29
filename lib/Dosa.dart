import 'package:flutter/material.dart';

class Dosa extends StatefulWidget {

  @override
  State<Dosa> createState() => _DosaState();
}

class _DosaState extends State<Dosa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dosa",style: TextStyle(fontFamily: "Custom"),),
      ),
    );
  }
}
