import 'package:flutter/material.dart';

class Waffles extends StatefulWidget {

  @override
  State<Waffles> createState() => _WafflesState();
}

class _WafflesState extends State<Waffles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Waffles",style: TextStyle(fontFamily: "Custom"),),
      ),
    );
  }
}
