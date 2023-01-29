import 'package:flutter/material.dart';

class French_fries extends StatefulWidget {

  @override
  State<French_fries> createState() => _French_friesState();
}

class _French_friesState extends State<French_fries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("French Fries",style: TextStyle(fontFamily: "Custom"),),
      ),
    );
  }
}
