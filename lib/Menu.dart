import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: Text("Menu",style: TextStyle(fontFamily: "Custom",fontSize: 30),)),    );
  }
}
