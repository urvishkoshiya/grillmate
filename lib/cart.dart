import 'package:flutter/material.dart';

class Cart extends StatefulWidget {

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Cart",style: TextStyle(fontFamily: "Custom",fontSize: 30),)),
    );
  }
}
